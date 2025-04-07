import 'package:flutter/material.dart';
import 'package:sendex_task/core/sensitive_data.dart';
import 'package:sendex_task/features/authentication/presentation/views/login_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: SensitiveData.url,
    anonKey: SensitiveData.anonKey,
  );

  runApp(const SendexTask());
}

class SendexTask extends StatelessWidget {
  const SendexTask({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
