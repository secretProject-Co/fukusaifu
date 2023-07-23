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
import 'package:fukusaifu/home/screens/categories_screen.dart';
import 'package:fukusaifu/home/screens/popular_user.dart';
import 'package:fukusaifu/home/widgets/landering_page_widget.dart';
import 'package:fukusaifu/home/widgets/more_view_widget.dart';
// import 'package:fukusaifu/onboarding/screens/onboarding_screen.dart';

import 'package:gap/gap.dart';
// import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

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
                        textSize: 23.sp),
                    RoundRectangleIcon(
                      icon: CupertinoIcons.bell,
                      rightMargin: 0.w,
                    ),
                  ],
                ),
                Gap(18.h),
                CustomTextField(
                  hintText: "お探しの副業は？",
                  hintTextColor: AppConst.kMainInput.withOpacity(0.4),
                  inputBkgColor: AppConst.kMainBackBg.withOpacity(0.1),
                  isPassword: false,
                  controller: searchController,
                  prefixIcon: Icon(
                    Icons.search,
                    size: 24.w,
                  ),
                  prefixIconColor: AppConst.kMainInput,
                ),
                Gap(20.h),
                PromoBox(
                    graStartColor: AppConst.kMainGreen,
                    graEndColor: AppConst.kGradientEnd,
                    imagePath: "assets/images/logo/google-logo-icon.png",
                    imageSize: 130.w,
                    mainTitle: "あなたのスキルを\n売り付けよう",
                    mainTitleColor: AppConst.kMainWhite,
                    mainTitleSize: 18.sp,
                    buttonText: "今すぐ登録",
                    buttonColor: AppConst.kGradientEnd,
                    buttonTextSize: 10.sp),
                MoreViewWidget(
                  leftPadding: 6.w,
                  rightPadding: 7.w,
                  topPadding: 25.h,
                  leftTitle: "LP依頼",
                  rightTitle: "もっと見る",
                  leftTitleColor: AppConst.kMainBlack,
                  rightTitleColor: AppConst.kViewMore,
                  screen: const CategoriesScreen(),
                ),
                Gap(20.h),
                SizedBox(
                  height: 184.h,
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: model2.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      var landModel = model2[index];
                      return Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: AppConst.kBoxShadow.withOpacity(0.2),
                              blurRadius: 200.w,
                              offset: const Offset(15, 15),
                              spreadRadius: 5,
                            )
                          ],
                        ),
                        child: LanderingPageWdiget(
                          title: landModel.title!,
                          imagePath: landModel.imageLink!,
                          subTitle: landModel.price!.toString(),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return Container(
                        color: AppConst.kScreenBkgColor,
                        child: SizedBox(width: 20.w),
                      );
                    },
                  ),
                ),
                MoreViewWidget(
                  leftPadding: 6.w,
                  rightPadding: 7.w,
                  topPadding: 25.h,
                  leftTitle: "人気ユーザー",
                  rightTitle: "もっと見る",
                  leftTitleColor: AppConst.kMainBlack,
                  rightTitleColor: AppConst.kViewMore,
                  screen: const PopularUserScreen(),
                ),
                Gap(20.h),
                SizedBox(
                  height: 87.h,
                  width: 323.w,
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
