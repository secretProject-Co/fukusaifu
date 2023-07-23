import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fukusaifu/constants/color_constants.dart';

class RoundRectangleIcon extends StatelessWidget {
  const RoundRectangleIcon(
      {Key? key,
      required this.icon,
      this.iconColor,
      this.bkgColor,
      this.borderRadius,
      this.rightMargin})
      : super(key: key);
  final IconData icon;
  final Color? iconColor;
  final Color? bkgColor;
  final double? borderRadius;
  final double? rightMargin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: rightMargin ?? 0),
      width: 45.w,
      height: 45.h,
      child: Container(
        width: 45.w,
        height: 45.h,
        decoration: ShapeDecoration(
          color: bkgColor ?? const Color(0xFFFAFDFF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 15),
          ),
          shadows: [
            BoxShadow(
              color: const Color(0x33134D5A),
              blurRadius: 30.w,
              offset: const Offset(5, 15),
              spreadRadius: 0,
            )
          ],
        ),
        child: Icon(
          icon,
          color: iconColor ?? AppConst.kGradientEnd,
        ),
      ),
    );
  }
}
