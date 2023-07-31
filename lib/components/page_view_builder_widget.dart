import 'package:flutter/cupertino.dart';
import 'package:fukusaifu/auth/widgets/main_title_text.dart';
import 'package:fukusaifu/constants/color_constants.dart';
import 'package:gap/gap.dart';

class PageViewBuilderWidget extends StatelessWidget {

  const PageViewBuilderWidget(
      {Key? key,
      required this.title,
      required this.imagePath,
      required this.subTitle,
      required this.price})
      : super(key: key);

  final String title;
  final String imagePath;
  final String subTitle;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 87,
      width: MediaQuery.of(context).size.width * .85,
      padding: const EdgeInsets.fromLTRB(10, 11, 20, 12),
      decoration: BoxDecoration(
        color: AppConst.kMainWhite,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            width: 64,
            height: 64,
            clipBehavior: Clip.antiAlias,
            child: Image.network(imagePath),
          ),
          const Gap(21),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MainTitleText(
                  title: title,
                  color: AppConst.kMainBlack,
                  textSize: 15,
                ),
                MainTitleText(
                  title: subTitle,
                  color: AppConst.kMainBlack.withOpacity(0.3),
                  textSize: 14,
                ),
              ],
            ),
          ),
          MainTitleText(
            title:
                "\$${price.toStringAsFixed(price.truncateToDouble() == price ? 0 : 2)}",
            color: AppConst.kHorizontalMenuWidgetColor,
            textSize: 22,
          ),
        ],
      ),
    );
  }
}
