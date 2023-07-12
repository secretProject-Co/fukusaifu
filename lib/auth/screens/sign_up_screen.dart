import 'package:flutter/material.dart';
import 'package:fukusaifu/auth/widgets/main_title_text.dart';
import 'package:fukusaifu/auth/widgets/signin_logo.dart';
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
          padding: EdgeInsets.only(left: 25,right:25,bottom: MediaQuery.of(context).size.height*.03),
          color: Colors.grey.shade50,
          child: Column(
            children: [
              Flexible(
                flex: 6,
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(20),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width *.5,
                    child: const FlutterLogo(size: double.infinity,),
                  ),
                ),
              ),
              const Gap(20),
              const Flexible(
                flex: 1,
                child: MainTitleText(
                  title: "ログイン", color: AppConst.kMainTitle, textSize: 20,),
              ),
              const Gap(20),
              CustomTextField(
                controller: emailController,
                hintText: "Eメール",
                color: AppConst.kGradientEnd,
                isPassword: false,
              ),
              const Gap(10),
              CustomTextField(
                hintText: "パスワード",
                color: AppConst.kGradientEnd,
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
              const Gap(20),
              const Expanded(
                flex: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MainTitleText(
                      title: "アカウントをお持ちではないですか？",
                      color: AppConst.kMainTitle,
                      textSize: 12,
                    ),
                    InkWell(
                      child: Text(
                        "今すぐ作成",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 12,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Expanded(
                flex: 1,
                child: MainTitleText(
                  title: "パスワードをお忘れですか？",
                  color: AppConst.kGradientEnd,
                  textSize: 12,
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
              const Gap(20),
              GradientButton(
                startColor: AppConst.kMainGreen,
                endColor: AppConst.kGradientEnd,
                text: "ログイン",
                textColor: AppConst.kMainWhite,
                widthSize: 5,
                onPressed: (){
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
