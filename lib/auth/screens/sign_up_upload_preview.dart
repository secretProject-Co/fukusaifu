import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fukusaifu/auth/widgets/main_title_text.dart';
import 'package:fukusaifu/components/button/arrow_back.dart';
import 'package:fukusaifu/components/gradient_button.dart';
import 'package:fukusaifu/constants/color_constants.dart';
import 'package:gap/gap.dart';

class SignupUploadPreView extends StatelessWidget {
  final String? imagePath;
  const SignupUploadPreView({Key? key, this.imagePath}) : super(key: key);

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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: ArrowBackComponent(onPressed: () {
                      Navigator.pop(context);
                    }),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.fromLTRB(5, 10, 0, 10)),
                      const MainTitleText(
                        title: "プロフィール写真",
                        color: AppConst.kMainTitle,
                        textSize: 24,
                      ),
                      const Gap(15),
                      const MainTitleText(
                        title: "アップロードした写真の確認をお願いします。\n次のステップへ進んでください。",
                        color: AppConst.kMainTitle,
                        textSize: 13,
                      ),
                      const Gap(70),
                      Align(
                        child: imagePath != null
                            ? Stack(
                                alignment: Alignment.topRight,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(22),
                                    child: Image.file(
                                      File(imagePath!),
                                      width: 245,
                                      height: 238,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: IconButton(
                                      onPressed: () {
                                        // image delete action
                                      },
                                      icon: SvgPicture.asset(
                                        "assets/images/close.svg",
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            : const SizedBox.shrink(),
                      ),
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
                  widthSize: 4,
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/signupSuccessScreen', (route) => false);
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
