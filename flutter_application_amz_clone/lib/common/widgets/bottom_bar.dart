import 'package:flutter/material.dart';
import 'package:flutter_application_amz_clone/constants/global_variabes.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter_application_amz_clone/features/home/screens/home_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() {
    return _BottomBarState();
  }
}

class _BottomBarState extends State<BottomBar> {
  int _pageIndex = 0;
  double _containerWidth = 42;
  double _bottomBarWidth = 5;

  List<Widget> pages = [
    const HomeScreen(),
    const Center(
      child: Text("Account Screen"),
    ),
    const Center(
      child: Text("Cart Screen"),
    )
  ];

  void updatePage(int page) {
    setState(() {
      _pageIndex = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ,
      bottomNavigationBar: BottomNavigationBar(
        onTap: updatePage,
        currentIndex: _pageIndex,
        selectedItemColor: GlobalVariables.selectedNavBarColor,
        unselectedItemColor: GlobalVariables.unselectedNavBarColor,
        backgroundColor: GlobalVariables.backgroundColor,
        iconSize: 25, //28
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: Container(
              width: _containerWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                      width: _bottomBarWidth,
                      color: _pageIndex == 0
                          ? GlobalVariables.selectedNavBarColor
                          : GlobalVariables.backgroundColor),
                ),
              ),
              child: Icon(
                Icons.home_outlined,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Container(
              width: _containerWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                      width: _bottomBarWidth,
                      color: _pageIndex == 1
                          ? GlobalVariables.selectedNavBarColor
                          : GlobalVariables.backgroundColor),
                ),
              ),
              child: Icon(
                Icons.person_outline_outlined,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Container(
              width: _containerWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                      width: _bottomBarWidth,
                      color: _pageIndex == 2
                          ? GlobalVariables.selectedNavBarColor
                          : GlobalVariables.backgroundColor),
                ),
              ),
              child: badges.Badge(
                position: badges.BadgePosition.topEnd(),
                badgeContent: const Text("2"),
                badgeStyle: badges.BadgeStyle(
                    badgeColor: Colors.orange,
                    elevation: 0,
                    shape: badges.BadgeShape.circle),
                child: Icon(
                  Icons.shopping_cart_outlined,
                  size: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
