import 'package:flutter/material.dart';
import 'package:fukusaifu/auth/screens/sign_up_success_screen.dart';
import 'package:fukusaifu/splash/splash.dart';
import 'auth/screens/sign_in_screen.dart';
import 'auth/screens/sign_up_screen.dart';
import 'onboarding/screens/onboarding_screen.dart';
import 'onboarding/screens/onboarding_screen2.dart';
import 'auth/screens/sign_up_screen_process.dart';
import 'auth/screens/sign_up_upload_photo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const Splash(),
        '/onboardingScreen': (context) => const OnboardingScreen(),
        '/onboardingScreen2': (context) => const OnboardingScreen2(),
        '/signinScreen': (context) => const SignInScreen(),
        '/signupScreen': (context) => const SignUpScreen(),
        '/signupScreenProcess': (context) => const SignUpScreenProcess(),
        '/signupUploadPhoto': (context) => const SignUpUploadPhoto(),
        '/signupSuccessScreen': (context) => const SignupSuccessScreen(),
      },
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
