import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:project_03/Persistant_navigation_bar/Cart.dart';
import 'package:project_03/Persistant_navigation_bar/Dashboard.dart';
import 'package:project_03/Persistant_navigation_bar/Profile.dart';
import 'package:project_03/Persistant_navigation_bar/Setting.dart';

class homepage_persistent extends StatefulWidget{
  const homepage_persistent({super.key});

  @override
  State<StatefulWidget> createState() => _homepage_persistant();
  }

class _homepage_persistant extends State<homepage_persistent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Homepage"),),
      bottomNavigationBar: PersistentTabView(
        context,
        backgroundColor: Colors.white,
        screens: const [
          Dashboard(),
          Setting(),
          Profile(),
          Cart()
          ],
        items: [
          PersistentBottomNavBarItem(
            icon: Icon(CupertinoIcons.home),
            title: ("Home"),
            activeColorPrimary: CupertinoColors.activeBlue,
            inactiveColorPrimary: CupertinoColors.systemGrey,
          ),
          PersistentBottomNavBarItem(
            icon: Icon(CupertinoIcons.settings),
            title: ("Settings"),
            activeColorPrimary: CupertinoColors.activeGreen,
            inactiveColorPrimary: CupertinoColors.systemGrey,
          ),PersistentBottomNavBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
            title: ("Profile"),
            activeColorPrimary: CupertinoColors.activeOrange,
            inactiveColorPrimary: CupertinoColors.systemGrey,
          ),
          PersistentBottomNavBarItem(
            icon: Icon(CupertinoIcons.cart),
            title: ("Cart"),
            activeColorPrimary: CupertinoColors.systemPink,
            inactiveColorPrimary: CupertinoColors.systemGrey,
          )
        ],
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(20)
        ),
        navBarStyle: NavBarStyle.style1,
        popAllScreensOnTapOfSelectedTab: true,
      ),
    );
  }

}

