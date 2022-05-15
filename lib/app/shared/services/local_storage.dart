import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final localStorageProvider = Provider<LocalStorage>((_) => HiveLocalStorageImpl());

abstract class LocalStorage {
  Future<void> init();
  Future<T?> get<T>(String key, {T Function(Map<String, dynamic>)? fromJson});
  Future<void> set(String key, Map<String, dynamic> value);
  Future<void> remove(String key);
}

class HiveLocalStorageImpl implements LocalStorage {
  static const _boxId = 'app';
  late final _box = Hive.box<Map<String, dynamic>>(_boxId);
  @override
  Future<void> init() async {
    await Hive.initFlutter('password_vault');
    await Hive.openBox<Map<String, dynamic>>(_boxId);
  }

  @override
  Future<T?> get<T>(
    String key, {
    T Function(Map<String, dynamic> p1)? fromJson,
  }) async {
    assert(
      T == dynamic || fromJson == null,
      'If you want to get a value of type T, you must provide a fromJson function',
    );
    final data = _box.get(key);
    if (data == null) {
      return null;
    }
    return fromJson?.call(data) ?? (data as T);
  }

  @override
  Future<void> remove(String key) => _box.delete(key);

  @override
  Future<void> set(String key, Map<String, dynamic> value) => _box.put(key, value);
}
