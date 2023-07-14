import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fukusaifu/auth/widgets/main_title_text.dart';
import 'package:fukusaifu/components/button/arrow_back.dart';
import 'package:fukusaifu/constants/color_constants.dart';
import 'package:gap/gap.dart';

class signUpUploadPreView extends StatelessWidget {
  final String? imagePath;

  const signUpUploadPreView({Key? key, this.imagePath}) : super(key: key);

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
            mainAxisAlignment: MainAxisAlignment.start,
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
                    title: "写真アップロード",
                    color: AppConst.kMainTitle,
                    textSize: 24,
                  ),
                  const Gap(15),
                  const MainTitleText(
                    title: "このデータはセキュリティのため、\nアカウントプロフィールに表示されます。",
                    color: AppConst.kMainTitle,
                    textSize: 13,
                  ),
                  const Gap(80),
                  imagePath != null
                      ? Stack(
                          alignment: Alignment.topRight,
                          children: <Widget>[
                            Image.file(
                              File(imagePath!),
                              width: 251,
                              height: 260,
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
