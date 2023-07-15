import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fukusaifu/auth/screens/sign_up_upload_preview.dart';
import 'package:fukusaifu/auth/widgets/main_title_text.dart';
import 'package:fukusaifu/components/button/arrow_back.dart';
import 'package:fukusaifu/components/gradient_button.dart';
import 'package:fukusaifu/constants/color_constants.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';

class SignUpUploadPhoto extends StatefulWidget {
  const SignUpUploadPhoto({Key? key}) : super(key: key);

  @override
  State<SignUpUploadPhoto> createState() => _SignUpUploadPhotoState();
}

class _SignUpUploadPhotoState extends State<SignUpUploadPhoto> {
  XFile? _pickedFile;
  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    final imageSize = MediaQuery.of(context).size.width / 4;

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
                      const Gap(15),
                      Column(
                        children: [
                          Container(
                            width: 375,
                            height: 129,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: AppConst.kMainWhite,
                                borderRadius: BorderRadius.circular(22),
                                boxShadow: const [
                                  BoxShadow(
                                    color: AppConst.kBoxShadow,
                                    blurRadius: 50,
                                    offset: Offset(0, 0),
                                    spreadRadius: 0,
                                  ),
                                ],
                                image: _pickedFile != null
                                    ? DecorationImage(
                                        image: FileImage(
                                          File(_pickedFile!.path),
                                        ),
                                        fit: BoxFit.cover,
                                      )
                                    : null),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  elevation: 0,
                                  foregroundColor: Colors.transparent,
                                  backgroundColor: Colors.transparent,
                                  onPressed: () async {
                                    _pickedFile = await _picker.pickImage(
                                        source: ImageSource.gallery);
                                    setState(() {});
                                  },
                                  heroTag: "photoUpload",
                                  child: _pickedFile == null
                                      ? SvgPicture.asset(
                                          "assets/images/photoUpload.svg")
                                      : Container(),
                                ),
                                const SizedBox(height: 10),
                                _pickedFile == null
                                    ? const Text("写真を選択")
                                    : Container(),
                              ],
                            ),
                          ),

                          const Gap(30),
                          Container(
                            width: 375,
                            height:
                                129, // adjust height to accommodate the text
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: AppConst.kMainWhite,
                                borderRadius: BorderRadius.circular(22),
                                boxShadow: const [
                                  BoxShadow(
                                    color: AppConst.kBoxShadow,
                                    blurRadius: 50,
                                    offset: Offset(0, 0),
                                    spreadRadius: 0,
                                  ),
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  elevation: 0,
                                  foregroundColor: Colors.transparent,
                                  backgroundColor: Colors.transparent,
                                  onPressed: () async {
                                    _pickedFile = await _picker.pickImage(
                                        source: ImageSource.camera);
                                    setState(() {});
                                  },
                                  heroTag: "camera",
                                  child: SvgPicture.asset(
                                    "assets/images/camera.svg",
                                  ),
                                ),
                                const SizedBox(
                                    height:
                                        10), // provide some space between button and text
                                const Text("カメラを起動"),
                              ],
                            ),
                          ),
                          // const Text("カメラを起動"),
                        ],
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
                  widthSize: 5,
                  onPressed: () {
                    if (_pickedFile != null) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignupUploadPreView(
                                    imagePath: _pickedFile!.path,
                                  )));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("画像を選択してください"),
                        ),
                      );
                    }
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
