import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fukusaifu/auth/widgets/main_title_text.dart';
import 'package:fukusaifu/components/page_view_builder_widget.dart';
import 'package:fukusaifu/components/promo_box.dart';
import 'package:fukusaifu/components/round_rectangle_icon.dart';
import 'package:fukusaifu/components/textfield.dart';
import 'package:fukusaifu/constants/color_constants.dart';
import 'package:fukusaifu/home/models/landing_page_model.dart';
import 'package:fukusaifu/home/widgets/landering_page_widget.dart';
import 'package:fukusaifu/home/widgets/more_view_widget.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();

  List<LandingpageModel> model2 = getExampleData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppConst.kScreenBkgColor,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 60),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MainTitleText(
                        title: "Fukusaifu\n見つけて、あなたの副業",
                        color: AppConst.kMainTitle,
                        textSize: 25.sp),
                    RoundRectangleIcon(
                      icon: CupertinoIcons.bell,
                      rightMargin: 0.w,
                    ),
                  ],
                ),
                const Gap(18),
                CustomTextField(
                  hintText: "お探しの副業は？",
                  hintTextColor: AppConst.kMainInput.withOpacity(0.4),
                  inputBkgColor: AppConst.kMainBackBg.withOpacity(0.1),
                  isPassword: false,
                  controller: searchController,
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 24,
                  ),
                  prefixIconColor: AppConst.kMainInput,
                ),
                const Gap(20),
                const PromoBox(
                    graStartColor: AppConst.kMainGreen,
                    graEndColor: AppConst.kGradientEnd,
                    imagePath: "assets/images/logo/google-logo-icon.png",
                    imageSize: 130,
                    mainTitle: "あなたのスキルを\n売り付けよう",
                    mainTitleColor: AppConst.kMainWhite,
                    mainTitleSize: 18,
                    buttonText: "今すぐ登録",
                    buttonColor: AppConst.kGradientEnd,
                    buttonTextSize: 10),
                const MoreViewWidget(
                  leftPadding: 6,
                  rightPadding: 7,
                  topPadding: 25,
                  leftTitle: "LP依頼",
                  rightTitle: "もっと見る",
                  leftTitleColor: AppConst.kMainBlack,
                  rightTitleColor: AppConst.kViewMore,
                ),
                const Gap(20),
                SizedBox(
                  height: 184,
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: model2.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      var landModel = model2[index];
                      return LanderingPageWdiget(
                          title: landModel.title!,
                          imagePath: landModel.imageLink!,
                          subTitle: landModel.price!.toString());
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return Container(
                        color: AppConst.kScreenBkgColor,
                        child: const SizedBox(width: 20),
                      );
                    },
                  ),
                ),
                const MoreViewWidget(
                  leftPadding: 6,
                  rightPadding: 7,
                  topPadding: 25,
                  leftTitle: "人気ユーザー",
                  rightTitle: "もっと見る",
                  leftTitleColor: AppConst.kMainBlack,
                  rightTitleColor: AppConst.kViewMore,
                ),
                const Gap(20),
                SizedBox(
                  height: 87,
                  width: double.infinity,
                  child: PageView.builder(
                    itemCount: model2.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      var landModel = model2[index];
                      return PageViewBuilderWidget(
                        title: landModel.title!,
                        imagePath: landModel.imageLink!,
                        subTitle: landModel.period!,
                        price: landModel.price!,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
