import 'package:password_provider_uploader/providerimages.dart';
import 'package:supabase/supabase.dart';

Future<void> main() async {
  print('Starting password provider uploader');
  final client = SupabaseClient(
    'https://yjunuswfsyezbgjvizgb.supabase.co',
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InlqdW51c3dmc3llemJnanZpemdiIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NTI2NTUxNDUsImV4cCI6MTk2ODIzMTE0NX0.TyREghdy0xzm1OrTe3std9WyxPJuEFimBQBNEf1l4iU',
  );

  for (var provider in providers) {
    print('Uploading ${provider["name"]}');
    final response = await client.from('password_provider').insert(provider).execute();
    if (response.error != null) {
      print(response.error.toString());
    } else {
      print(response.data.toString());
    }
  }
}
