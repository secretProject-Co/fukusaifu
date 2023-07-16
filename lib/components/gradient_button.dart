import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    Key? key,
    required this.startColor,
    required this.endColor,
    required this.text,
    required this.textColor,
    required this.widthSize,
    this.onPressed,
  }) : super(key: key);

  final Color startColor;
  final Color endColor;
  final Color textColor;
  final String text;
  final double widthSize;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      width: (widthSize) * 0.1.sw,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: [
            startColor,
            endColor,
          ],
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0x115A6CEA),
            blurRadius: 50,
            offset: Offset(12, 26),
            spreadRadius: 0,
          )
        ],
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          disabledForegroundColor: Colors.transparent.withOpacity(0.38),
          disabledBackgroundColor: Colors.transparent.withOpacity(0.12),
          shadowColor: Colors.transparent,
        ),
        child: Text(
          text,
          style: TextStyle(
              color: textColor, fontWeight: FontWeight.bold, fontSize: 14.sp),
        ),
      ),
    );
  }
}
