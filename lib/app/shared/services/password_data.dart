import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../features/password_form/password_form_state_codegen.dart';
import '../db/service.dart';
import '../exceptions.dart';
import '../models/password_codegen.dart';
import '../models/rpc/password_rpc_codegen.dart';

final passwordServiceProvider = Provider<PasswordService>(PasswordServiceImpl.new);

abstract class PasswordService {
  final DbService db;

  PasswordService(Ref ref) : db = ref.read(dbServiceProvider);
  Stream<List<PasswordData>> byUserId(String uid);

  Future<PasswordData> byId(int id);

  Future<int> create(PasswordFormState state);

  Future<List<PasswordProvider>> getProviders();

  Future<void> delete(int id);
}

class PasswordServiceImpl extends PasswordService {
  PasswordServiceImpl(super.ref);

  Future<Map<String, dynamic>> _getProvider(int id) async {
    final passProviderData = await db.rpc<List<Map<String, dynamic>>>(
      GetPasswordProviderRpcBuilder(id: id),
    );
    if (passProviderData.error != null) {
      throw AppException(passProviderData.error!.message);
    }

    return passProviderData.data!.first;
  }

  @override
  Stream<List<PasswordData>> byUserId(String uid) async* {
    final stream = db.rpcStream<List<Map<String, dynamic>>>(
      GetPasswordDataRpcBuilder(uid: uid),
      'password_data',
    );
    await for (final res in stream) {
      if (res.error != null) {
        throw AppException(res.error!.message);
      }
      final passData = <PasswordData>[];
      for (var element in res.data!) {
        final provider = await _getProvider(element['provider_id']);

        final json = <String, dynamic>{
          "provider": provider,
          ...element,
        };

        passData.add(PasswordData.fromJson(json));
      }
      yield passData;
    }
  }

  @override
  Future<PasswordData> byId(int id) async {
    final passDataRes = await db.rpc<List<Map<String, dynamic>>>(GetPasswordDataRpcBuilder(id: id));
    if (passDataRes.error != null) {
      throw AppException(passDataRes.error!.message);
    }
    final passData = passDataRes.data!.first;
    final provider = await _getProvider(passData['provider_id']);

    final json = {
      "provider": provider,
      ...passData,
    };

    return PasswordData.fromJson(json);
  }

  @override
  Future<int> create(PasswordFormState state) => db
      .rpc<int>(
        AddUpdatePasswordRpcBuilder(state: state),
        mapData: (data) => data,
      )
      .then((value) => value.data!);

  @override
  Future<List<PasswordProvider>> getProviders() async {
    final passProviderData = await db.rpc<List<PasswordProvider>>(
      const GetPasswordProviderRpcBuilder(id: 0),
      mapData: (data) =>
          (data as List).cast<Map<String, dynamic>>().map(PasswordProvider.fromJson).toList(),
    );
    if (passProviderData.error != null) {
      throw AppException(passProviderData.error!.message);
    }

    return passProviderData.data!;
  }

  @override
  Future<void> delete(int id) => db.rpc(DeletePasswordRpcBuilder(id: id));
}
