import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fukusaifu/auth/widgets/main_title_text.dart';
import 'package:fukusaifu/components/page_move_with_animation.dart';
import 'package:fukusaifu/constants/color_constants.dart';
import 'package:fukusaifu/home/screens/home_screen.dart';
import 'package:fukusaifu/home/screens/popular_user.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class MoreViewWidget extends StatelessWidget {
  const MoreViewWidget({
    Key? key,
    this.leftPadding,
    this.topPadding,
    this.rightPadding,
    this.bottomPadding,
    required this.leftTitle,
    this.rightTitle,
    required this.leftTitleColor,
    this.rightTitleColor,
    required this.screen,
  }) : super(key: key);

  final double? leftPadding;
  final double? topPadding;
  final double? rightPadding;
  final double? bottomPadding;
  final String leftTitle;
  final String? rightTitle;
  final Color leftTitleColor;
  final Color? rightTitleColor;
  final Widget? screen;

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
          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => screen ?? const HomeScreen()),
              );
            },
            child: rightTitle !=null ? MainTitleText(
              title: rightTitle ?? "もっと見る",
              color: rightTitleColor ?? AppConst.kViewMore,
              textSize: 12.sp,
            ) : Container(),
          ),
        ],
      ),
    );
  }
}
