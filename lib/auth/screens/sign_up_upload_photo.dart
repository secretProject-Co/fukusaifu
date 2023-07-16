import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    final imageSize = (.4.w);

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 25.w, right: 25.w, bottom: 30.h),
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
                          padding: EdgeInsets.fromLTRB(5.w, 10.h, 0.w, 10.h)),
                      MainTitleText(
                        title: "写真アップロード",
                        color: AppConst.kMainTitle,
                        textSize: 24.sp,
                      ),
                      Gap(15.h),
                      MainTitleText(
                        title: "このデータはセキュリティのため、\nアカウントプロフィールに表示されます。",
                        color: AppConst.kMainTitle,
                        textSize: 13.sp,
                      ),
                      Gap(15.h),
                      Column(
                        children: [
                          Container(
                            width: 375.w,
                            height: 129.h,
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
                                      source: ImageSource.gallery,
                                      imageQuality: 50,
                                    );
                                    setState(() {});
                                  },
                                  heroTag: "photoUpload",
                                  child: _pickedFile == null
                                      ? SvgPicture.asset(
                                          "assets/images/photoUpload.svg")
                                      : Container(),
                                ),
                                SizedBox(height: 10.h),
                                _pickedFile == null
                                    ? const Text("写真を選択")
                                    : Container(),
                              ],
                            ),
                          ),
                          Gap(30.h),
                          Container(
                            width: 375.w,
                            height: 129.h,
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
                                      source: ImageSource.camera,
                                      preferredCameraDevice: CameraDevice.rear,
                                      imageQuality: 50,
                                      maxWidth: 500.w,
                                      maxHeight: 500.h,
                                    );
                                    setState(() {});
                                  },
                                  heroTag: "camera",
                                  child: SvgPicture.asset(
                                    "assets/images/camera.svg",
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                const Text("カメラを起動"),
                              ],
                            ),
                          ),
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
                  widthSize: 4.w,
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
