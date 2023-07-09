import 'package:flutter/material.dart';
import 'package:fukusaifu/auth/widgets/main_title_text.dart';
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
          padding: const EdgeInsets.symmetric(horizontal: 20),
          color: Colors.grey.shade50,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(20),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width *.5,
                  child: Image.asset("assets/images/logo/logo-fukusaifu.png"),
                ),
              ),
              const Gap(20),
              const MainTitleText(
                  title: "Login To Your Account", color: AppConst.kMainTitle, textSize: 20,),
              const Gap(20),
              Column(
                children: [
                  CustomTextField(
                    controller: emailController,
                    hintText: "Email",
                    color: AppConst.kMainGreen,
                    isPassword: false,
                  ),
                  const Gap(10),
                  CustomTextField(
                    hintText: "Password",
                    color: AppConst.kMainGreen,
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
                  const MainTitleText(
                    title: "Or Continue With",
                    color: AppConst.kMainTitle,
                    textSize: 12,
                  ),
                  const Gap(20),
                  const MainTitleText(
                    title: "Forgot Your Password?",
                    color: AppConst.kMainGreen,
                    textSize: 12,
                  ),
                  const Gap(5),
                  GradientButton(
                    startColor: AppConst.kMainGreen,
                    endColor: AppConst.kGradientEnd,
                    text: "TestButton",
                    textColor: AppConst.kMainWhite,
                    widthSize: 5,
                    onPressed: (){
                      emailController.text = "Text Change!!!!!";
                    },
                  ),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
