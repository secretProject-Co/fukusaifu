import 'package:flutter/material.dart';
import 'package:fukusaifu/constants/color_constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      required this.hintText,
      this.icon,
      this.borderLineColor,
      required this.isPassword,
      this.textInputType,
      this.suffixIcon,
      required this.controller,
      this.prefixIcon,
      this.prefixIconColor,
      this.hintTextColor,
      this.inputBkgColor})
      : super(key: key);

  final String hintText;
  final Color? hintTextColor;
  final Color? inputBkgColor;
  final IconData? icon;
  final Widget? prefixIcon;
  final Color? borderLineColor;
  final Color? prefixIconColor;
  final bool isPassword;
  final TextInputType? textInputType;
  final IconButton? suffixIcon;
  final TextEditingController controller;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x115A6CEA),
            blurRadius: 50,
            offset: Offset(12, 26),
            spreadRadius: 0,
          ),
        ]
      ),
      child: TextField(
        controller: controller,
        obscureText: isPassword,
        decoration: InputDecoration(
          filled: true,
          fillColor: inputBkgColor ?? Colors.white,
          hintText: hintText,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          prefixIconColor: prefixIconColor,
          hintStyle: TextStyle(
              color: hintTextColor ?? Colors.grey.shade400
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 1,
              color: AppConst.kBorderLine,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: AppConst.kBorderLine,),
            borderRadius: BorderRadius.circular(15),),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: borderLineColor ?? Colors.transparent),
            borderRadius: BorderRadius.circular(15),),
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: AppConst.kBorderLine,),
            borderRadius: BorderRadius.circular(15),),
          contentPadding: const EdgeInsets.all(20),
        ),
      ),
    );
  }
}
