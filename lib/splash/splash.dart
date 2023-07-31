import 'package:flutter/material.dart';
import 'package:fukusaifu/components/page_move_with_animation.dart';
import 'package:fukusaifu/onboarding/screens/onboarding_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import '../constants/color_constants.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }


  startTimer() {
    Future.delayed(const Duration(seconds: 3), () {
      PageMoveWithAnimation(
              context: context,
              child: const OnboardingScreen(),
              duration: 600,
              reversDuration: 600,
              transitionType: PageTransitionType.fade)
          .animationPushAndRemove();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo/logo-fukusaifu.png",
              width: 100,
              height: 100,
            ),
            Text(
              "Fukusaifu",
              style: GoogleFonts.notoSans(
                color: AppConst.kMainGreen,
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "副業を望む人々をつなげるアプリ",
              style: GoogleFonts.notoSans(
                color: AppConst.kMainTitle,
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
