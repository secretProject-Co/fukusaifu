import 'package:flutter/material.dart';
import 'package:fukusaifu/constants/color_constants.dart';

class ArrowBackComponent extends StatelessWidget {
  final VoidCallback onPressed;

  const ArrowBackComponent({required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppConst.kMainBackBg.withOpacity(0.1),
        ),
        child: IconButton(
            onPressed: onPressed,
            icon: const Icon(Icons.arrow_back_ios_new_rounded,
                color: AppConst.kMainBackBtn)));
  }
}
