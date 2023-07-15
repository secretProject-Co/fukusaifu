import 'package:flutter/material.dart';
import 'package:fukusaifu/constants/color_constants.dart';
import 'package:fukusaifu/home/screens/add_post_screen.dart';
import 'package:fukusaifu/home/screens/chat_screen.dart';
import 'package:fukusaifu/home/screens/home_screen.dart';
import 'package:fukusaifu/home/screens/profile_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class CustomButtomBar extends StatefulWidget {
  const CustomButtomBar({final Key? key,})
      : super(key: key);

  @override
  _CustomButtomBarState createState() => _CustomButtomBarState();
}

class _CustomButtomBarState extends State<CustomButtomBar> {
  PersistentTabController _controller = PersistentTabController();
  bool _hideNavBar = false;


  List<Widget> _buildScreens() => [
    const HomeScreen(),
    const ChatScreen(),
    const AddPostScreen(),
    const ProfileScreen(),
  ];

  List<PersistentBottomNavBarItem> _navBarsItems() => [
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.home),
      inactiveIcon: const Icon(Icons.home_outlined),
      title: "Home",
      activeColorPrimary: Colors.white,
      inactiveColorPrimary: Colors.white,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.chat_bubble),
      inactiveIcon: const Icon(Icons.chat_bubble_outline),
      title: "Chat",
      activeColorPrimary: Colors.white,
      inactiveColorPrimary: Colors.white,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.add_circle),
      inactiveIcon: const Icon(Icons.add_circle_outline),
      title: "Add",
      activeColorPrimary: Colors.white,
      inactiveColorPrimary: Colors.white,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.person),
      inactiveIcon: const Icon(Icons.person_outline),
      title: "Profile",
      activeColorPrimary: Colors.white,
      inactiveColorPrimary: Colors.white,
    ),

  ];

  @override
  Widget build(final BuildContext context) => Scaffold(

    body: PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      resizeToAvoidBottomInset: true,
      navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0
          ? 0.0
          : kBottomNavigationBarHeight,
      bottomScreenMargin: 0,
      backgroundColor: AppConst.kGradientEnd,
      hideNavigationBar: _hideNavBar,
      decoration: const NavBarDecoration(colorBehindNavBar: Colors.indigo),
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 400),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
      ),
      navBarStyle: NavBarStyle
          .style1, // Choose the nav bar style with this property
    ),
  );
}