import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fukusaifu/auth/screens/sign_up_success_screen.dart';
import 'package:fukusaifu/constants/color_constants.dart';
import 'package:fukusaifu/home/screens/chat_screen.dart';
import 'package:fukusaifu/home/screens/home.dart';
import 'package:fukusaifu/home/screens/popular_user.dart';
import 'package:fukusaifu/splash/splash.dart';
import 'auth/screens/sign_in_screen.dart';
import 'auth/screens/sign_up_screen.dart';
import 'onboarding/screens/onboarding_screen.dart';
import 'onboarding/screens/onboarding_screen2.dart';
import 'auth/screens/sign_up_screen_process.dart';
import 'auth/screens/sign_up_upload_photo.dart';
import 'auth/screens/sign_up_upload_preview.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => MaterialApp(
        routes: {
          '/': (context) => const Splash(),
          '/onboardingScreen': (context) => const OnboardingScreen(),
          '/onboardingScreen2': (context) => const OnboardingScreen2(),
          '/signinScreen': (context) => const SignInScreen(),
          '/signupScreen': (context) => const SignUpScreen(),
          '/signupScreenProcess': (context) => const SignUpScreenProcess(),
          '/signupUploadPhoto': (context) => const SignUpUploadPhoto(),
          '/signupSuccessScreen': (context) => const SignupSuccessScreen(),
          '/signupUploadPreView': (context) => const SignupUploadPreView(),
          '/popularUserScreen': (context) => const PopularUserScreen(),
          '/chatScreen': (context) => const ChatScreen(),
          '/home': (context) => const Home(),

        },
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: AppConst.kScreenBkgColor,
          useMaterial3: true,
        ),
      ),
    );
  }
}
