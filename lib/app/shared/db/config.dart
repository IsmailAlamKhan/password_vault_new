import 'package:hooks_riverpod/hooks_riverpod.dart';

final dbConfigProvider = Provider<DbConfig>((_) => const SupabaseConfig());

abstract class DbConfig {
  final String url;
  final String anonKey;
  const DbConfig({required this.url, required this.anonKey});
}

class SupabaseConfig extends DbConfig {
  const SupabaseConfig()
      : super(
          url: 'https://yjunuswfsyezbgjvizgb.supabase.co',
          anonKey:
              'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InlqdW51c3dmc3llemJnanZpemdiIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NTI2NTUxNDUsImV4cCI6MTk2ODIzMTE0NX0.TyREghdy0xzm1OrTe3std9WyxPJuEFimBQBNEf1l4iU',
        );
}
