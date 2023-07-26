import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fukusaifu/auth/widgets/main_title_text.dart';
import 'package:fukusaifu/constants/color_constants.dart';
import 'package:gap/gap.dart';

class ChatListWidget extends StatelessWidget {

  final String userName;
  final String chatDesc;
  final String imagePath;
  final DateTime chatDate;

  const ChatListWidget({
    super.key,
    required this.userName,
    required this.chatDesc,
    required this.imagePath,
    required this.chatDate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(8, 10, 12, 9),
      width: 335.w,
      height: 81.h,
      decoration: BoxDecoration(
          color: AppConst.kMainWhite,
          borderRadius: BorderRadius.circular(22),
          boxShadow: [
            BoxShadow(
              color: Color(0x115A6CEA),
              blurRadius: 50,
              offset: Offset(12, 26),
              spreadRadius: 0,
            ),
          ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                child: Image.asset(imagePath),
                width: 62,
                height: 62,
              ),
              Gap(17.45.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MainTitleText(title: userName, color: AppConst.kMainBlack, textSize: 15),
                  MainTitleText(title: chatDesc, color: AppConst.kMainBlack.withOpacity(0.3), textSize: 15),

                ],
              ),
            ],
          ),
          MainTitleText(
              title:
                  ("${chatDate.hour.toString()}:${chatDate.minute.toString()}"),
              color: AppConst.kMainBlack.withOpacity(0.3),
              textSize: 14),
        ],
      ),
    );
  }
}
