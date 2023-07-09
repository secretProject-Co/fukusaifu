import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      Navigator.pushNamedAndRemoveUntil(
          context, '/onboardingScreen', (route) => false);
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
