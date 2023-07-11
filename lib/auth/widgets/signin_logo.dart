import 'package:flutter/cupertino.dart';
import 'package:fukusaifu/constants/color_constants.dart';

class SignInLogo extends StatelessWidget {
  const SignInLogo({Key? key, required this.logoName, required this.imageName}) : super(key: key);
  final String logoName;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: SizedBox(
        width: MediaQuery.of(context).size.width*.42,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x115A6CEA),
                    blurRadius: 50,
                    offset: Offset(12, 26),
                    spreadRadius: 0,
                  ),
                ],
            color: AppConst.kMainWhite,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppConst.kBorderLine,width: 1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 30,
                decoration: const BoxDecoration(
                  color: AppConst.kMainWhite,
                ),
                child: Image.asset(imageName),
              ),
              Text(logoName),
            ],
          ),
        ),
      ),
    );
  }
}
