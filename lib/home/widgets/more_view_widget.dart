import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fukusaifu/auth/widgets/main_title_text.dart';
import 'package:fukusaifu/constants/color_constants.dart';

class MoreViewWidget extends StatelessWidget {
  const MoreViewWidget(
      {Key? key,
      this.leftPadding,
      this.topPadding,
      this.rightPadding,
      this.bottomPadding,
      required this.leftTitle,
      required this.rightTitle,
      required this.leftTitleColor,
      required this.rightTitleColor})
      : super(key: key);

  final double? leftPadding;
  final double? topPadding;
  final double? rightPadding;
  final double? bottomPadding;
  final String leftTitle;
  final String rightTitle;
  final Color leftTitleColor;
  final Color rightTitleColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        leftPadding ?? 0,
        topPadding ?? 0,
        rightPadding ?? 0,
        bottomPadding ?? 0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          MainTitleText(
            title: leftTitle,
            color: leftTitleColor,
            textSize: 15.sp,
          ),
          MainTitleText(
            title: rightTitle,
            color: rightTitleColor,
            textSize: 12.sp,
          ),
        ],
      ),
    );
  }
}
