import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fukusaifu/auth/widgets/main_title_text.dart';
import 'package:fukusaifu/components/button/arrow_back.dart';
import 'package:fukusaifu/components/textfield.dart';
import 'package:fukusaifu/constants/color_constants.dart';
import 'package:gap/gap.dart';

import '../../components/gradient_button.dart';

class SignUpScreenProcess extends StatefulWidget {
  const SignUpScreenProcess({Key? key}) : super(key: key);

  @override
  State<SignUpScreenProcess> createState() => _SignUpScreenProcessState();
}

class _SignUpScreenProcessState extends State<SignUpScreenProcess> {
  bool showPass = true;
  TextEditingController kanjiNameController = TextEditingController();
  TextEditingController hiraganaNameController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 25.w, right: 25.w, bottom: 30.h),
          color: Colors.grey.shade50,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: ArrowBackComponent(onPressed: () {
                        Navigator.pop(context);
                      })),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.fromLTRB(5.w, 10.h, 0.w, 10.h)),
                      MainTitleText(
                        title: "自己紹介を記入してスタート",
                        color: AppConst.kMainTitle,
                        textSize: 24.sp,
                      ),
                      Gap(5.h),
                      MainTitleText(
                        title: "この情報はセキュリティに使用されます",
                        color: AppConst.kMainTitle,
                        textSize: 13.sp,
                      ),
                      Gap(15.h),
                      Column(
                        children: [
                          CustomTextField(
                            controller: kanjiNameController,
                            hintText: "山田 太郎",
                            borderLineColor: AppConst.kMainGreen,
                            isPassword: false,
                          ),
                          Gap(20.h),
                          CustomTextField(
                            hintText: "やまだ たろう",
                            borderLineColor: AppConst.kMainGreen,
                            isPassword: false,
                            controller: hiraganaNameController,
                          ),
                          Gap(20.h),
                          CustomTextField(
                            hintText: "携帯番号",
                            borderLineColor: AppConst.kMainGreen,
                            isPassword: false,
                            controller: mobileNumberController,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              Center(
                child: GradientButton(
                  startColor: AppConst.kMainGreen,
                  endColor: AppConst.kGradientEnd,
                  text: "Next",
                  textColor: AppConst.kMainWhite,
                  widthSize: 4.w,
                  onPressed: () {
                    Navigator.pushNamed(context, '/signupUploadPhoto');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
