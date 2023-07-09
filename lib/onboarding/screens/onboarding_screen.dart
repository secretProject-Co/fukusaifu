import 'package:flutter/material.dart';
import 'package:fukusaifu/constants/color_constants.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Onboarding Screen"),
        titleTextStyle: TextStyle(color: AppConst.kMainTitle),
      ),
    );
  }
}
