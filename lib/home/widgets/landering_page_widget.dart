import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fukusaifu/auth/widgets/main_title_text.dart';
import 'package:fukusaifu/constants/color_constants.dart';
import 'package:gap/gap.dart';

class LanderingPageWdiget extends StatelessWidget {
  const LanderingPageWdiget(
      {Key? key,
      required this.title,
      required this.imagePath,
      required this.subTitle})
      : super(key: key);

  final String title;
  final String imagePath;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 147.w,
      height: 184.h,
      decoration: BoxDecoration(
        color: AppConst.kMainWhite,
        borderRadius: BorderRadius.circular(22),
        boxShadow: const [
          BoxShadow(
            color: AppConst.kScreenBkgColor,
            blurRadius: 50,
            offset: Offset(12, 26),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        children: [
          Gap(26.h),
          SizedBox(
            width: 96.w,
            height: 73.h,
            child:  Image.network(imagePath),
          ),
          Gap(17.h),
          MainTitleText(
            title: title,
            color: AppConst.kMainBlack,
            textSize: 16.sp,
          ),
          Gap(4.h),
          MainTitleText(
            title: subTitle,
            color: AppConst.kMainBlack.withOpacity(0.5),
            textSize: 16.sp,
          ),
        ],
      ),
    );
  }
}
