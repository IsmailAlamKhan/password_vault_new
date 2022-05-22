import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

import '../exceptions.dart';
import '../models/rpc/rpc.dart';
import 'config.dart';
import 'models_codegen.dart';

final dbServiceProvider = Provider<DbService>(SupabaseDbServiceImpl.new);

abstract class DbService {
  final DbConfig config;

  DbService(Ref ref) : config = ref.read(dbConfigProvider);

  Future<void> init();

  /// call a stored procedure
  Future<Response<T>> rpc<T>(
    SupabaseRpcBuilder rpcBuilder, {
    T Function(dynamic data)? mapData,
  });
  Stream<Response<T>> rpcStream<T>(
    SupabaseRpcBuilder rpcBuilder,
    String listenKey, {
    T Function(dynamic data)? mapData,
  });
}

class SupabaseDbServiceImpl extends DbService {
  SupabaseDbServiceImpl(super.ref);
  late final _supabase = Supabase.instance.client;

  @override
  Future<void> init() => Supabase.initialize(
        localStorage: const EmptyLocalStorage(),
        anonKey: config.anonKey,
        url: config.url,
        debug: kDebugMode,
        authCallbackUrlHostname: 'signin-callback',
      );

  @override
  Future<Response<T>> rpc<T>(
    SupabaseRpcBuilder rpcBuilder, {
    T Function(dynamic data)? mapData,
  }) =>
      _supabase
          .rpc(
            rpcBuilder.name,
            params: rpcBuilder.toJson(),
          )
          .execute()
          .then((value) {
        return value.toResponse<T>(mapData);
      });

  @override
  Stream<Response<T>> rpcStream<T>(
    SupabaseRpcBuilder rpcBuilder,
    String listenKey, {
    T Function(dynamic data)? mapData,
  }) {
    final streamController = StreamController<Response<T>>.broadcast();
    void _addData(Response<T> response) {
      if (response.error != null) {
        streamController.addError(AppException(response.error!.message), StackTrace.current);
      } else {
        streamController.add(response);
      }
    }

    rpc(rpcBuilder, mapData: mapData).then(
      (value) {
        _addData(value);
        _supabase.from(listenKey).stream(['id']).execute().listen(
              (event) {
                rpc(rpcBuilder, mapData: mapData).then(_addData);
              },
            );
      },
    );
    return streamController.stream;
  }
}

const _hiveBoxName = 'supabase_authentication';

const supabasePersistSessionKey = 'SUPABASE_PERSIST_SESSION_KEY';

class _HiveLocalStorage extends LocalStorage {
  const _HiveLocalStorage()
      : super(
          initialize: _initialize,
          hasAccessToken: _hasAccessToken,
          accessToken: _accessToken,
          removePersistedSession: _removePersistedSession,
          persistSession: _persistSession,
        );

  static String? encryptionKey;

  static Future<void> _initialize() async {
    HiveCipher? encryptionCipher;
    if (encryptionKey != null) {
      encryptionCipher = HiveAesCipher(base64Url.decode(encryptionKey!));
    }
    await Hive.initFlutter('password_vault/auth');
    await Hive.openBox(_hiveBoxName, encryptionCipher: encryptionCipher);
  }

  static Future<bool> _hasAccessToken() {
    return Future.value(
      Hive.box(_hiveBoxName).containsKey(
        supabasePersistSessionKey,
      ),
    );
  }

  static Future<String?> _accessToken() {
    return Future.value(
      Hive.box(_hiveBoxName).get(supabasePersistSessionKey) as String?,
    );
  }

  static Future<void> _removePersistedSession() {
    return Hive.box(_hiveBoxName).delete(supabasePersistSessionKey);
  }

  static Future<void> _persistSession(String persistSessionString) {
    return Hive.box(_hiveBoxName).put(supabasePersistSessionKey, persistSessionString);
  }
}
