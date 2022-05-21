import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

import '../db/models_codegen.dart';
import '../db/service.dart';
import '../exceptions.dart';
import '../models/rpc/rpc.dart';
import '../models/user_codegen.dart';

final authServiceProvider = Provider<AuthService>(SupabaseAuthServiceImpl.new);

abstract class AuthService {
  final DbService dbService;

  AuthService(Ref ref) : dbService = ref.read(dbServiceProvider);

  Future<AppUser> login({required String email, required String password});
  Future<AppUser> signUp({
    required String username,
    required String email,
    required String password,
  });

  Future<void> logout();

  Future<AppUser?> getInitialUser();

  Future<void> deleteAccount(String uid);
}

class SupabaseAuthServiceImpl extends AuthService {
  late final _supabase = Supabase.instance.client;
  late final _supabaseAuth = SupabaseAuth.instance;

  SupabaseAuthServiceImpl(Ref ref) : super(ref);

  @override
  Future<AppUser> login({required String email, required String password}) async {
    GotrueSessionResponse res = await _supabase.auth.signIn(email: email, password: password);
    if (res.error != null) {
      throw AppException(res.error!.message);
    }

    final user = res.data?.user;
    assert(user != null, 'User or data is null');
    final userId = user!.id;
    Response<Map<String, dynamic>> profileResponse;

    profileResponse = await dbService.rpc<Map<String, dynamic>>(
      GetProfilesRpcBuilder(uid: userId),
      mapData: (data) => data[0],
    );
    if (profileResponse.error != null) {
      throw AppException(profileResponse.error!.message);
    }

    final json = {...res.data!.user!.toJson(), ...profileResponse.data!};

    return AppUser.fromJson(json);
  }

  @override
  Future<void> logout() async {
    final res = await _supabase.auth.signOut();
    if (res.error != null) {
      throw AppException(res.error!.message);
    }
  }

  @override
  Future<AppUser?> getInitialUser() async {
    final bool exist = await _supabaseAuth.localStorage.hasAccessToken();
    if (!exist) {
      return null;
    }

    final String? jsonStr = await _supabaseAuth.localStorage.accessToken();
    if (jsonStr == null) {
      return null;
    }

    final response = await Supabase.instance.client.auth.recoverSession(jsonStr);
    if (response.error != null) {
      _supabaseAuth.localStorage.removePersistedSession();
      return null;
    } else {
      final userId = response.data!.user!.id;
      final profileResponse = await dbService.rpc<Map<String, dynamic>?>(
        GetProfilesRpcBuilder(uid: userId),
        mapData: (data) {
          if (data.isNotEmpty) {
            return data[0];
          }
        },
      );
      if (profileResponse.error != null) {
        throw AppException(profileResponse.error!.message);
      }
      if (profileResponse.data == null) {
        throw AppException('Profile is null');
      }

      final json = {
        ...response.data!.user!.toJson(),
        ...profileResponse.data!,
      };

      return AppUser.fromJson(json);
    }
  }

  @override
  Future<void> deleteAccount(String uid) => dbService.rpc(DeleteUserRpcBuilder(uid: uid));

  @override
  Future<AppUser> signUp({
    required String username,
    required String email,
    required String password,
  }) async {
    final res = await _supabase.auth.signUp(email, password);
    if (res.error != null) {
      throw AppException(res.error!.message);
    }

    final user = res.data!.user;
    assert(user != null, 'User or data is null');

    final profileResponse = await dbService.rpc<Map<String, dynamic>>(
      AddUpdateProfileRpcBuilder(
        uid: user!.id,
        username: username,
      ),
    );

    if (profileResponse.error != null) {
      throw AppException(profileResponse.error!.message);
    }

    final json = {...res.data!.user!.toJson(), ...profileResponse.data!};

    return AppUser.fromJson(json);
  }
}
