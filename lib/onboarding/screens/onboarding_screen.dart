import 'package:flutter/material.dart';
import 'package:fukusaifu/constants/color_constants.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

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
              "副業をお探しですか？",
              style: GoogleFonts.notoSans(
                color: AppConst.kMainGreen,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "では、Fukusaifuへようこそ",
              style: GoogleFonts.notoSans(
                color: AppConst.kMainTitle,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
