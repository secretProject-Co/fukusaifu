import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fukusaifu/auth/widgets/main_title_text.dart';
import 'package:fukusaifu/components/page_view_builder_widget.dart';
import 'package:fukusaifu/components/round_rectangle_icon.dart';
import 'package:fukusaifu/components/textfield.dart';
import 'package:fukusaifu/constants/color_constants.dart';
import 'package:fukusaifu/home/models/landing_page_model.dart';
import 'package:fukusaifu/home/widgets/more_view_widget.dart';
import 'package:gap/gap.dart';

class PopularUserScreen extends StatefulWidget {
  const PopularUserScreen({Key? key}) : super(key: key);


  @override
  State<PopularUserScreen> createState() => _PopularUserScreenState();
}

class _PopularUserScreenState extends State<PopularUserScreen> {
  TextEditingController searchController = TextEditingController();
  List<LandingpageModel> model2 = getExampleData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
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
                hintText: "お探しのユーザーは？",
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
              MoreViewWidget(
                leftPadding: 6.w,
                rightPadding: 7.w,
                topPadding: 25.h,
                leftTitle: "人気ユーザーリスト",
                leftTitleColor: AppConst.kMainBlack,
                screen: const PopularUserScreen(),
              ),
              Gap(20.h),
              Expanded(
                child: ListView.separated(
                  itemCount: model2.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    var landModel = model2[index];
                    return PageViewBuilderWidget(
                      title: landModel.title!,
                      imagePath: landModel.imageLink!,
                      subTitle: landModel.period!,
                      price: landModel.price!,
                    );
                  }, separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(height: 20,);
                },
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
