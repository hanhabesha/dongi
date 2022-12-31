import 'package:dongi/app/onboarding/onboarding_page.dart';
import 'package:dongi/app/register/forget_password/forget_password_page.dart';
import 'package:dongi/app/register/sign_in/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import './constants/color_config.dart';
import 'app/register/new_password/new_password_page.dart';

void main() {
  //WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: ColorConfig.primarySwatch,
        scaffoldBackgroundColor: ColorConfig.background,
      ),
      debugShowCheckedModeBanner: false,
      home: ForgetPasswordPage(),
    );
  }
}
