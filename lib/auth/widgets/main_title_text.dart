import 'dart:ui';

import 'package:flutter/cupertino.dart';

class MainTitleText extends StatelessWidget {
  const MainTitleText({Key? key, required this.title, required this.color, required this.textSize})
      : super(key: key);
  final String title;
  final Color color;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: textSize),
    );
  }
}
