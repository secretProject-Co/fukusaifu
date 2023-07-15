import 'package:flutter/cupertino.dart';
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
      width: 147,
      height: 184,
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
          const Gap(26),
          SizedBox(
            width: 96,
            height: 73,
            child:  Image.network(imagePath),
          ),
          const Gap(17),
          MainTitleText(
            title: title,
            color: AppConst.kMainBlack,
            textSize: 16,
          ),
          const Gap(4),
          MainTitleText(
            title: subTitle,
            color: AppConst.kMainBlack.withOpacity(0.5),
            textSize: 16,
          ),
        ],
      ),
    );
  }
}
