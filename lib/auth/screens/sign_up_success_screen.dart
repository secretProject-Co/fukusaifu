import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fukusaifu/auth/widgets/main_title_text.dart';
import 'package:fukusaifu/components/gradient_button.dart';
import 'package:fukusaifu/constants/color_constants.dart';
import 'package:gap/gap.dart';

class SignupSuccessScreen extends StatelessWidget {
  const SignupSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
            left: 25.w,
            right: 25.w,
            bottom: 30.h),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: Image.asset("assets/images/congrats.png"),
                  ),
                  Gap(33.h),
                  MainTitleText(
                    title: 'おめでとう',
                    color: const Color(0xFF53E78B),
                    textSize: 30.sp,
                  ),
                  Gap(12.h),
                  MainTitleText(
                    title: 'アカウントの準備が整いました',
                    color: AppConst.kMainTitle,
                    textSize: 23.sp,
                  ),
                ],
              ),
              Expanded(
                child: Container(),
              ),
              GradientButton(
                startColor: AppConst.kMainGreen,
                endColor: AppConst.kGradientEnd,
                text: "Home",
                textColor: AppConst.kMainWhite,
                widthSize: 4.w,
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/home', (route) => false);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
