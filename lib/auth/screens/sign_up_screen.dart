import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fukusaifu/auth/widgets/main_title_text.dart';
import 'package:fukusaifu/components/gradient_button.dart';
import 'package:fukusaifu/components/textfield.dart';
import 'package:fukusaifu/constants/color_constants.dart';
import 'package:gap/gap.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool showPass = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 25.w, right: 25.w, bottom: 30.h),
          color: Colors.grey.shade50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 5,
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(20.w),
                  child: SizedBox(
                    width: (0.5.sw),
                    child: const FlutterLogo(
                      size: double.infinity,
                    ),
                  ),
                ),
              ),
              Gap(20.h),
              Flexible(
                flex: 1,
                child: MainTitleText(
                  title: "無料でアカウント作成",
                  color: AppConst.kMainTitle,
                  textSize: 20.sp,
                ),
              ),
              Gap(20.h),
              CustomTextField(
                controller: emailController,
                hintText: "ニックネーム",
                borderLineColor: AppConst.kGradientEnd,
                isPassword: false,
                prefixIcon: const Icon(Icons.person_outline),
                prefixIconColor: AppConst.kGradientEnd,
              ),
              Gap(10.h),
              CustomTextField(
                hintText: "Eメール",
                borderLineColor: AppConst.kGradientEnd,
                prefixIcon: const Icon(Icons.email_outlined),
                prefixIconColor: AppConst.kGradientEnd,
                textInputType: TextInputType.visiblePassword,
                isPassword: showPass,
                controller: passwordController,
              ),
              Gap(10.h),
              CustomTextField(
                hintText: "パスワード",
                borderLineColor: AppConst.kGradientEnd,
                prefixIcon: const Icon(Icons.lock_outline),
                prefixIconColor: AppConst.kGradientEnd,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      showPass = !showPass;
                    });
                  },
                  icon: showPass
                      ? const Icon(Icons.visibility_outlined)
                      : const Icon(Icons.visibility_off_outlined),
                ),
                textInputType: TextInputType.visiblePassword,
                isPassword: showPass,
                controller: passwordController,
              ),
              Gap(20.h),
              Expanded(
                flex: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MainTitleText(
                      title: "アカウントをお持ちですか？",
                      color: AppConst.kMainTitle,
                      textSize: 12.sp,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "サインイン",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 12.sp,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Gap(20.h),
              Expanded(
                flex: 0,
                child: Container(),
              ),
              GradientButton(
                startColor: AppConst.kMainGreen,
                endColor: AppConst.kGradientEnd,
                text: "アカウントを作成する",
                textColor: AppConst.kMainWhite,
                widthSize: 5.w,
                onPressed: () {
                  Navigator.pushNamed(context, '/signupScreenProcess');
                },
              ),
              // Flexible(child: Container(),flex: 1,),
            ],
          ),
        ),
      ),
    );
  }
}
