import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fukusaifu/home/screens/add_post_screen.dart';
import 'package:fukusaifu/home/screens/chat_screen.dart';
import 'package:fukusaifu/home/bottom/CustomButtomBar.dart';
import 'package:fukusaifu/home/screens/profile_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Home Screen"),
      )
    );
  }
}
