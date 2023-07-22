import 'package:flutter/cupertino.dart';
import 'package:fukusaifu/home/bottom/custom_bottom_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const CustomButtomBar();
  }
}
