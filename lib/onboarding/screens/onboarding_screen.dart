import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fukusaifu/components/gradient_button.dart';
import 'package:fukusaifu/constants/color_constants.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

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
                    "副業を探すことに苦労していますか？",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.notoSans(
                      color: AppConst.kMainSubTitle,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Gap(10.h),
                  Text(
                    "副業を通じて成長しますか？\n私、副業ができるかな? と心配していませんか？",
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
                        context, '/onboardingScreen2', (route) => false);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
