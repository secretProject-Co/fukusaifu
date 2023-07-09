import 'package:flutter/material.dart';
import 'package:fukusaifu/components/gradient_button.dart';
import 'package:fukusaifu/constants/color_constants.dart';
import 'package:gap/gap.dart';
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
              width: 300,
              height: 400,
            ),
            Text(
              "副業を探すことに苦労していますか？",
              style: GoogleFonts.notoSans(
                color: AppConst.kMainSubTitle,
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Gap(20),
            Text(
              "副業を通じて成長しますか？\n私、副業ができるかな? と心配していませんか？",
              style: GoogleFonts.notoSans(
                color: AppConst.kMainBlack,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            const Gap(35),
            GradientButton(
                startColor: AppConst.kMainGreen,
                endColor: AppConst.kGradientEnd,
                text: "Next",
                textColor: AppConst.kMainWhite,
                widthSize: 3.5,
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/onboardingScreen2', (route) => false);
                }),
          ],
        ),
      ),
    );
  }
}
