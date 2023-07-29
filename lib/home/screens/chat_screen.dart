import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fukusaifu/auth/widgets/main_title_text.dart';
import 'package:fukusaifu/components/button/arrow_back.dart';
import 'package:fukusaifu/components/textfield.dart';
import 'package:fukusaifu/constants/color_constants.dart';
import 'package:fukusaifu/home/bottom/custom_bottom_bar.dart';
import 'package:fukusaifu/home/widgets/chat_list_widget.dart';
import 'package:gap/gap.dart';

import '../../components/gradient_button.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  bool showPass = true;
  TextEditingController kanjiNameController = TextEditingController();
  TextEditingController hiraganaNameController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 25.w, right: 25.w, bottom: 30.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: ArrowBackComponent(onPressed: () {
                        })),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.fromLTRB(5.w, 10.h, 0.w, 10.h)),
                        MainTitleText(
                          title: "トーク",
                          color: AppConst.kMainTitle,
                          textSize: 24.sp,
                        ),
                        Gap(12.h),
                        ChatListWidget(
                          userName: '동동',
                          chatDesc: '동동님 빨리 오세요',
                          imagePath: 'assets/images/logo/google-logo-icon.png',
                          chatDate: DateTime.now(),
                        ),
                        Gap(20.h),
                        ChatListWidget(
                          userName: '동동',
                          chatDesc: '동동님 빨리 오세요',
                          imagePath: 'assets/images/logo/google-logo-icon.png',
                          chatDate: DateTime.now(),
                        ),
                        Gap(20.h),
                        ChatListWidget(
                          userName: '동동',
                          chatDesc: '동동님 빨리 오세요',
                          imagePath: 'assets/images/logo/google-logo-icon.png',
                          chatDate: DateTime.now(),
                        ),
                        Gap(20.h),
                        ChatListWidget(
                          userName: '동동',
                          chatDesc: '동동님 빨리 오세요',
                          imagePath: 'assets/images/logo/google-logo-icon.png',
                          chatDate: DateTime.now(),
                        ),
                        Gap(20.h),
                        ChatListWidget(
                          userName: '동동',
                          chatDesc: '동동님 빨리 오세요',
                          imagePath: 'assets/images/logo/google-logo-icon.png',
                          chatDate: DateTime.now(),
                        ),
                        Gap(20.h),
                        ChatListWidget(
                          userName: '동동',
                          chatDesc: '동동님 빨리 오세요',
                          imagePath: 'assets/images/logo/google-logo-icon.png',
                          chatDate: DateTime.now(),
                        ),
                        Gap(20.h),
                        // ListView.separated(
                        //     itemCount: 5,
                        //     itemBuilder: (context,index){
                        //       return ChatListWidget(
                        //         userName: '동동',
                        //         chatDesc: '동동님 빨리 오세요',
                        //         imagePath: 'assets/images/logo/google-logo-icon.png',
                        //         chatDate: DateTime.now(),
                        //       );
                        //     },
                        //     separatorBuilder: (BuildContext context, int index){
                        //       return SizedBox(height: 20.h,);
                        //     },
                        // ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

