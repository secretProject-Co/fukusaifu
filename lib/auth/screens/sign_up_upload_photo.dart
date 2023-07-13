import 'package:flutter/material.dart';
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
                      })),
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
                          const SizedBox(height: 20),
                          if (_pickedFile != null)
                            FloatingActionButton(
                              onPressed: () async {
                                _pickedFile = await _picker.pickImage(
                                    source: ImageSource.gallery);
                                setState(() {});
                              },
                              tooltip: '画像を選択',
                              child: const Icon(Icons.photo_library),
                            ),
                          FloatingActionButton(
                            onPressed: () async {
                              _pickedFile = await _picker.pickImage(
                                  source: ImageSource.camera);
                              setState(() {});
                            },
                            tooltip: 'カメラを起動',
                            child: const Icon(Icons.photo_camera),
                          ),
                        ],
                      )
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
                    Navigator.pushNamed(context, '/signupUploadPhoto');
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


// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:fukusaifu/auth/widgets/main_title_text.dart';
// import 'package:fukusaifu/components/button/arrow_back.dart';
// import 'package:fukusaifu/components/gradient_button.dart';
// import 'package:fukusaifu/constants/color_constants.dart';
// import 'package:gap/gap.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:permission_handler/permission_handler.dart';

// class SignUpUploadPhoto extends StatefulWidget {
//   const SignUpUploadPhoto({Key? key}) : super(key: key);

//   @override
//   State<SignUpUploadPhoto> createState() => _SignUpUploadPhotoState();
// }

// class ImagePickerWidget extends StatefulWidget {
//   const ImagePickerWidget({Key? key}) : super(key: key);

//   @override
//   _ImagePickerWidgetState createState() => _ImagePickerWidgetState();
// }

// class _ImagePickerWidgetState extends State<ImagePickerWidget> {
//   File? _imageFile;
//   final picker = ImagePicker();

// }

// Future getImageFromGallery() async {
//   var status = await Permission.photos.request();
//   if (status.isGranted) {
//     var picker;
//     final pickedFile = await picker.getImage(source: ImageSource.gallery);
//     setState(() {
//       if (pickedFile != null) {
//         var imageFile = File(pickedFile.path);
//       } else {
//         print('イメージが選択されていません。');
//       }
//     });
//   } else {
//     print('写真へのアクセス許可が拒否されました。');
//   }
// }

// void setState(Null Function() param0) {}

// Future getImageFromCamera() async {
//   var status = await Permission.camera.request();
//   if (status.isGranted) {
//     var picker;
//     final pickedFile = await picker.getImage(source: ImageSource.camera);
//     setState(() {
//       if (pickedFile != null) {
//         var imageFile = File(pickedFile.path);
//       } else {
//         print('イメージが選択されていません。');
//       }
//     });
//   } else {
//     print('カメラへのアクセス許可が拒否されました。');
//   }
// }

// class _SignUpUploadPhotoState extends State<SignUpUploadPhoto> {
//   bool showPass = true;
//   TextEditingController kanjiNameController = TextEditingController();
//   TextEditingController hiraganaNameController = TextEditingController();
//   TextEditingController mobileNumberController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     var imageFile;
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           padding: EdgeInsets.only(
//               left: 25,
//               right: 25,
//               bottom: MediaQuery.of(context).size.height * .03),
//           color: Colors.grey.shade50,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Column(
//                 children: [
//                   Align(
//                       alignment: Alignment.centerLeft,
//                       child: ArrowBackComponent(onPressed: () {
//                         Navigator.pop(context);
//                       })),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Container(
//                           alignment: Alignment.center,
//                           padding: const EdgeInsets.fromLTRB(5, 10, 0, 10)),
//                       const MainTitleText(
//                         title: "写真アップロード",
//                         color: AppConst.kMainTitle,
//                         textSize: 24,
//                       ),
//                       const Gap(15),
//                       const MainTitleText(
//                         title: "このデータはセキュリティのため、\nアカウントプロフィールに表示されます。",
//                         color: AppConst.kMainTitle,
//                         textSize: 13,
//                       ),
//                       const Gap(15),
//                       Column(
//                         children: [
//                           const ImagePickerWidget(),
//                           imageFile == null
//                               ? const Text('イメージが選択されていません。')
//                               : Image.file(imageFile!),
//                           const SizedBox(height: 20),
//                           const FloatingActionButton(
//                             onPressed: getImageFromGallery,
//                             tooltip: '画像を選択',
//                             child: Icon(Icons.photo_library),
//                           ),
//                           const SizedBox(height: 20),
//                           const FloatingActionButton(
//                             onPressed: getImageFromCamera,
//                             tooltip: 'カメラを起動',
//                             child: Icon(Icons.photo_camera),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ],
//               ),
//               Center(
//                 child: GradientButton(
//                   startColor: AppConst.kMainGreen,
//                   endColor: AppConst.kGradientEnd,
//                   text: "Next",
//                   textColor: AppConst.kMainWhite,
//                   widthSize: 5,
//                   onPressed: () {
//                     Navigator.pushNamed(context, '/signupUploadPhoto');
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
