import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fukusaifu/auth/widgets/main_title_text.dart';
import 'package:fukusaifu/constants/color_constants.dart';
import 'package:gap/gap.dart';

class PromoBox extends StatelessWidget {
  const PromoBox(
      {Key? key,
      this.graStartColor,
      this.graEndColor,
      required this.imagePath,
      required this.imageSize,
      required this.mainTitle,
      required this.mainTitleColor,
      required this.mainTitleSize,
      required this.buttonText,
      required this.buttonColor,
      required this.buttonTextSize})
      : super(key: key);
  final Color? graStartColor;
  final Color? graEndColor;
  final String imagePath;
  final double imageSize;
  final String mainTitle;
  final Color mainTitleColor;
  final double mainTitleSize;
  final String buttonText;
  final Color buttonColor;
  final double buttonTextSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [graStartColor ?? Colors.white, graEndColor ?? Colors.white],
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              width: imageSize,
              child: Image.asset(imagePath),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(30),
                SizedBox(
                  child: MainTitleText(
                      title: mainTitle,
                      color: mainTitleColor,
                      textSize: mainTitleSize),
                ),
                const Gap(10),
                Container(
                  width: 82,
                  height: 32,
                  decoration: BoxDecoration(
                    color: AppConst.kMainWhite,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Center(
                    child: MainTitleText(
                      title: buttonText,
                      color: buttonColor,
                      textSize: buttonTextSize,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
