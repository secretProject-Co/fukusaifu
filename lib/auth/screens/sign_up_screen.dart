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
          padding: EdgeInsets.only(
              left: 25,
              right: 25,
              bottom: MediaQuery.of(context).size.height * .03),
          color: Colors.grey.shade50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 5,
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(20),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: const FlutterLogo(
                      size: double.infinity,
                    ),
                  ),
                ),
              ),
              const Gap(20),
              const Flexible(
                flex: 1,
                child: MainTitleText(
                  title: "無料でアカウント作成",
                  color: AppConst.kMainTitle,
                  textSize: 20,
                ),
              ),
              const Gap(20),
              CustomTextField(
                controller: emailController,
                hintText: "ニックネーム",
                color: AppConst.kGradientEnd,
                isPassword: false,
                prefixIcon: const Icon(Icons.person_outline),
                prefixIconColor: AppConst.kGradientEnd,
              ),
              const Gap(10),
              CustomTextField(
                hintText: "Eメール",
                color: AppConst.kGradientEnd,
                prefixIcon: const Icon(Icons.email_outlined),
                prefixIconColor: AppConst.kGradientEnd,
                textInputType: TextInputType.visiblePassword,
                isPassword: showPass,
                controller: passwordController,
              ),
              const Gap(10),
              CustomTextField(
                hintText: "パスワード",
                color: AppConst.kGradientEnd,
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
              const Gap(20),
              Expanded(
                flex: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const MainTitleText(
                      title: "アカウントをお持ちではないですか？",
                      color: AppConst.kMainTitle,
                      textSize: 12,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/signupScreenProcess');
                      },
                      child: const Text(
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
              const Gap(20),
              Expanded(
                flex: 0,
                child: Container(),
              ),
              GradientButton(
                startColor: AppConst.kMainGreen,
                endColor: AppConst.kGradientEnd,
                text: "アカウントを作成する",
                textColor: AppConst.kMainWhite,
                widthSize: 5,
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
