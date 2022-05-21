import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../db/service.dart';
import '../exceptions.dart';
import '../models/password_codegen.dart';
import '../models/rpc/password_rpc_codegen.dart';

final passwordServiceProvider = Provider<PasswordService>(PasswordServiceImpl.new);

abstract class PasswordService {
  final DbService db;

  PasswordService(Ref ref) : db = ref.read(dbServiceProvider);
  Future<List<PasswordData>> byUserId(String uid);
}

class PasswordServiceImpl extends PasswordService {
  PasswordServiceImpl(super.ref);

  @override
  Future<List<PasswordData>> byUserId(String uid) async {
    final passDataRes = await db.rpc<List<Map<String, dynamic>>>(
      GetPasswordDataRpcBuilder(uid: uid),
      // mapData: (data) => data.cast<Map<String, dynamic>>(),
    );
    if (passDataRes.error != null) {
      throw AppException(passDataRes.error!.message);
    }
    final passData = <PasswordData>[];
    for (var element in passDataRes.data!) {
      final passProviderData = await db.rpc<List<Map<String, dynamic>>>(
        GetPasswordProviderRpcBuilder(id: element['provider_id']),
      );
      if (passProviderData.error != null) {
        throw AppException(passProviderData.error!.message);
      }

      final provider = passProviderData.data!.first;
      final json = {
        "provider": provider,
        ...element,
      };

      passData.add(PasswordData.fromJson(json));
    }
    return passData;
  }
}
