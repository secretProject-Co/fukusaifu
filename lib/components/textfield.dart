import 'package:flutter/material.dart';
import 'package:fukusaifu/constants/color_constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      required this.hintText,
      this.icon,
      required this.color,
      required this.isPassword,
      this.textInputType,
      this.suffixIcon,
      required this.controller})
      : super(key: key);

  final String hintText;
  final IconData? icon;
  final Color color;
  final bool isPassword;
  final TextInputType? textInputType;
  final IconButton? suffixIcon;
  final TextEditingController controller;


  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppConst.kMainWhite,
        hintText: hintText,
        suffixIcon: suffixIcon,
        hintStyle: TextStyle(
            color: Colors.grey.shade400
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Colors.grey.shade400,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 3, color: Colors.grey.shade400,),
          borderRadius: BorderRadius.circular(15),),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 3, color: color,),
          borderRadius: BorderRadius.circular(15),),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 3, color: Colors.grey.shade400,),
          borderRadius: BorderRadius.circular(15),),
        contentPadding: EdgeInsets.all(20),
      ),
    );
  }
}