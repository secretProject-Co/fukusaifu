import 'package:flutter/material.dart';
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
            left: 25,
            right: 25,
            bottom: MediaQuery.of(context).size.height * .03),
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
                  const Gap(33),
                  const MainTitleText(
                    title: 'おめでとう',
                    color: Color(0xFF53E78B),
                    textSize: 30,
                  ),
                  const Gap(12),
                  const MainTitleText(
                    title: 'プロフィールの準備が整いました。',
                    color: AppConst.kMainTitle,
                    textSize: 23,
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
                widthSize: 4,
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
