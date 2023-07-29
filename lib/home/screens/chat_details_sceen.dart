import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fukusaifu/auth/widgets/main_title_text.dart';
import 'package:fukusaifu/components/button/arrow_back.dart';
import 'package:fukusaifu/constants/color_constants.dart';
import 'package:gap/gap.dart';


List<String> ChatDesc = [
  "안녕! 잘 지내?",
  "네, 안녕! 잘 지내고 있어. 너는 어때?",
  "나도 괜찮아. 요즘 뭐하고 지내니?",
  "요즘에는 새로운 프로젝트에 참여해서 바빠. 너무 흥미로워!요즘에는 새로운 프로젝트에 참여해서 바빠. "
      "너무 흥미로워!요즘에는 새로운 프로젝트에 참여해서 바빠. 너무 흥미로워!요즘에는 새로운 프로젝트에 참여해서 바빠. 너무 흥미로워!",
  "정말? 대단해! 나도 뭔가 새로운 도전을 해봐야겠어.",
  "응, 그래! 응원할게. 화이팅!",
  "응, 그래! 응원할게. 화이팅!",
  "응, 그래! 응원할게. 화이팅!"
];

class ChatDetailsScreen extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        onTap: (){
          FocusScope.of(context).unfocus();
        },
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(left: 25.w, right: 25.w, bottom: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: ArrowBackComponent(onPressed: () {Navigator.pop(context);})),
                    Gap(19.h),
                    MainTitleText(
                      title: "トーク",
                      color: AppConst.kMainTitle,
                      textSize: 24.sp,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 13, right: 28),
                      width: 347.w,
                      height: 93.h,
                      decoration: BoxDecoration(
                        color: AppConst.kMainWhite,
                        borderRadius: BorderRadius.circular(22),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x115A6CEA),
                            blurRadius: 50,
                            offset: Offset(12, 26),
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Image.network(
                                  "https://s3-alpha-sig.figma.com/img/d2c3/d006/41fb73600d25d69f8ea5c31d28a8d1d7?Expires=1691366400&Signature=kjLoBEB~jhdV22FTm2RNm-VpDtWnr4KMY6DRhojZgKPSC8SA31R4piLvKTYS6C4oMIXanOWKfzKnUHXW3AlNFRXjelR1bbf5AYB5Ty4cxO07zHIfZ5BMcSTUBe8dvPsEM144qWe9BCa1XJ88y96ToiJ5wcFpy1gv5z5CoTezQmRyMJdzTFzLw2Kh8-En~NmV4ugXWJUXO6WPe0eEK-qJwZ40oS2YqizuSbGTTOij4bdgeg1gArmUQv~8Dd3MqeOSCyyFbfCEBOxRqsGTx-JP2qcmASeXf6XExCXsIsUTF3ybjgQogvNSYR59dz7awstuLTSoz4K4s~AETrQu9zp30A__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                                  fit: BoxFit.cover,),
                                width: 62,
                                height: 62,
                                decoration: BoxDecoration(
                                  color: Color(0xFF3D405B),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                              Gap(17.45.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  MainTitleText(title: "Louis Kelly",
                                      color: AppConst.kMainBlack,
                                      textSize: 15),
                                  Row(
                                    children: [
                                      Container(
                                        width: 6.w,
                                        height: 6.h,
                                        decoration: const BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment(0.99, -0.15),
                                            end: Alignment(-0.99, 0.15),
                                            colors: [
                                              Color(0xFF53E78B),
                                              Color(0xFF14BE77),
                                            ],
                                          ),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      Gap(4.w),
                                      MainTitleText(title: "Online",
                                          color: AppConst.kMainBlack.withOpacity(
                                              0.3),
                                          textSize: 15),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // SizedBox(
                          //   width: 40.w,
                          //   height: 40.h,
                          //   child: Stack(
                          //     children: [
                          //       Opacity(
                          //         opacity: 0.1,
                          //         child: Container(
                          //           width: 40.w,
                          //           height: 40.h,
                          //           decoration: const BoxDecoration(
                          //               gradient: LinearGradient(
                          //                 begin: Alignment(0.99, -0.15),
                          //                 end: Alignment(-0.99, 0.15),
                          //                 colors: [
                          //                   Color(0xFF53E78B),
                          //                   Color(0xFF14BE77)
                          //                 ],
                          //               ),
                          //               shape: BoxShape.circle
                          //           ),
                          //         ),
                          //       ),
                          //       SizedBox(
                          //         width: 40.w,
                          //         height: 40.h,
                          //         child: Icon(Icons.phone,
                          //           color: AppConst.kMainGreen, size: 28.h,),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                    Gap(10.h),
                  ],
                ),
                Expanded(
                  flex: 4,
                  child: ListView.separated(
                    reverse: true,
                    controller: _scrollController,
                      itemCount: ChatDesc.length,
                      itemBuilder: (context,index){
                        Iterable<String> chatList = ChatDesc.reversed;
                        return Align(
                          alignment: (index % 2 == 0)
                              ? Alignment.centerLeft
                              : Alignment.centerRight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(
                                12, 12, 29, 15),
                            constraints: BoxConstraints(
                              maxWidth: 265.w,
                            ),
                            decoration: BoxDecoration(
                              color: (index % 2 == 0) ? Color(
                                  0xFFF6F6F6) : AppConst.kMainGreen
                                  .withOpacity(0.8),
                              borderRadius: BorderRadius.circular(13),
                            ),
                            child: Text(chatList.elementAt(index)),
                          ),
                        );
                      },
                      separatorBuilder:(context, index) => Container(margin: EdgeInsets.only(bottom: 20.h),),),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5.h),
                  width: 355.w,
                  height: 57.h,
                  decoration: BoxDecoration(
                    color: AppConst.kMainWhite,
                    borderRadius: BorderRadius.circular(22),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x195A6CEA),
                        blurRadius: 50,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "テキストを入力してください。",
                      suffixIcon: Icon(Icons.send_outlined),
                      suffixIconColor: AppConst.kGradientEnd,
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 0,
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(22),
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 0,
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 0, color: Colors.transparent),
                        borderRadius: BorderRadius.circular(22),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 0,
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(22),
                      ),
                      contentPadding: const EdgeInsets.all(20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
        );
  }
}

