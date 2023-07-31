import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fukusaifu/components/gradient_button.dart';
import 'package:fukusaifu/constants/color_constants.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 25.w, right: 25.w, bottom: 30.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 3,
                child: Container(),
              ),
              Image.asset(
                "assets/images/logo/logo-fukusaifu.png",
                width: 300.sp,
                height: 400.sp,
              ),
              Expanded(
                flex: 1,
                child: Container(),
              ),
              Column(
                children: [
                  Text(
                    "Fukusaifuは高品質な副業を見つけるための\nあなたの最良のパートナー",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.notoSans(
                      color: AppConst.kMainSubTitle,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Gap(10.h),
                  Text(
                    "では、Fukusaifuへようこそ!",
                    style: GoogleFonts.notoSans(
                      color: AppConst.kMainBlack,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Expanded(
                flex: 2,
                child: Container(),
              ),
              GradientButton(
                  startColor: AppConst.kMainGreen,
                  endColor: AppConst.kGradientEnd,
                  text: "Next",
                  textColor: AppConst.kMainWhite,
                  widthSize: 4.w,
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/signinScreen', (route) => false);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
