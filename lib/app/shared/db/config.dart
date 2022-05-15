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
          url: 'https://eelhuqvhkfrcingmuijj.supabase.co',
          anonKey:
              'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVlbGh1cXZoa2ZyY2luZ211aWpqIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NTI2MDM1OTMsImV4cCI6MTk2ODE3OTU5M30.CczD42Ru6Mry4lHI9KJpm_wdaYHv913djEkgQz-B1N4',
        );
}
