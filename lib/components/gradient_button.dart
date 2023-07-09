import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  const GradientButton(
      {Key? key,
      required this.startColor,
      required this.endColor,
      required this.text,
      required this.textColor,
      required this.widthSize, this.onPressed,})
      : super(key: key);

  final Color startColor;
  final Color endColor;
  final Color textColor;
  final String text;
  final double widthSize;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      width: MediaQuery.of(context).size.width * (widthSize * 0.1),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              startColor,
              endColor,
            ],
          ),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
          elevation: 0,
          shadowColor: Colors.transparent,
          primary: Colors.transparent,
          onSurface: Colors.transparent,
        ),
        child: Text(
          text,
          style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
