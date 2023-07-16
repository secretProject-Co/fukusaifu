import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fukusaifu/auth/widgets/main_title_text.dart';
import 'package:fukusaifu/auth/widgets/signin_logo.dart';
import 'package:fukusaifu/components/gradient_button.dart';
import 'package:fukusaifu/components/textfield.dart';
import 'package:fukusaifu/constants/color_constants.dart';
import 'package:gap/gap.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool showPass = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 25.w, right: 25.w, bottom: (0.03.sh)),
          color: Colors.grey.shade50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 6,
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
                  title: "サインイン",
                  color: AppConst.kMainTitle,
                  textSize: 20.sp,
                ),
              ),
              Gap(20.h),
              CustomTextField(
                controller: emailController,
                hintText: "Eメール",
                borderLineColor: AppConst.kGradientEnd,
                isPassword: false,
              ),
              Gap(10.h),
              CustomTextField(
                hintText: "パスワード",
                borderLineColor: AppConst.kGradientEnd,
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
                      title: "アカウントをお持ちではないですか？",
                      color: AppConst.kMainTitle,
                      textSize: 12.sp,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/signupScreen');
                      },
                      child: Text(
                        "今すぐ作成",
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
              Expanded(
                flex: 1,
                child: MainTitleText(
                  title: "パスワードをお忘れですか？",
                  color: AppConst.kGradientEnd,
                  textSize: 12.sp,
                ),
              ),
              const Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SignInLogo(
                        logoName: "Apple",
                        imageName: "assets/images/logo/apple-logo-icon.png"),
                    SignInLogo(
                        logoName: "Google",
                        imageName: "assets/images/logo/google-logo-icon.png"),
                  ],
                ),
              ),
              Gap(20.h),
              GradientButton(
                startColor: AppConst.kMainGreen,
                endColor: AppConst.kGradientEnd,
                text: "ログイン",
                textColor: AppConst.kMainWhite,
                widthSize: 5.w,
                onPressed: () {
                  emailController.text = "Text Change!!!!!";
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
