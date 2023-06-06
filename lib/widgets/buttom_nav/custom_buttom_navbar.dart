import 'package:dana_clone/provider/bottom_navigation_provider.dart';
import 'package:dana_clone/utils/dana_clone_theme.dart';
import 'package:dana_clone/widgets/buttom_nav/icon_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  final List<String> _iconName = [
    "dana_nav_on",
    "history",
    "pocket",
    "profile",
  ];
  @override
  Widget build(BuildContext context) {
    final provider =
        Provider.of<BottomNavigationProvider>(context, listen: false);
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: 30),
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(color: DanaCloneTheme.lightGrey),
            ),
          ),
          child: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.ideographic,
              children: [
                IconBottomNavBar(
                  iconName: _iconName[0],
                  iconSize: 25,
                  label: "Home",
                  onTap: () {
                    provider.onSelected(0);
                    setState(() {
                      _iconName[0] = 'dana_nav_on';
                      _iconName[1] = 'history';
                      _iconName[2] = 'pocket';
                      _iconName[3] = 'profile';
                    });
                  },
                ),
                IconBottomNavBar(
                  iconName: _iconName[1],
                  iconSize: 25,
                  label: "History",
                  onTap: () {
                    provider.onSelected(1);
                    setState(() {
                      _iconName[0] = 'dana_nav_off';
                      _iconName[1] = 'history';
                      _iconName[2] = 'pocket';
                      _iconName[3] = 'profile';
                    });
                  },
                ),
                IconBottomNavBar(
                  iconName: _iconName[2],
                  iconSize: 30,
                  label: "Pocket",
                  onTap: () {
                    provider.onSelected(2);
                    setState(() {
                      _iconName[0] = 'dana_nav_off';
                      _iconName[1] = 'history';
                      _iconName[2] = 'pocket';
                      _iconName[3] = 'profile';
                    });
                  },
                ),
                IconBottomNavBar(
                  iconName: _iconName[3],
                  iconSize: 25,
                  label: "Me",
                  onTap: () {
                    provider.onSelected(3);
                    setState(() {
                      _iconName[0] = 'dana_nav_off';
                      _iconName[1] = 'history';
                      _iconName[2] = 'pocket';
                      _iconName[3] = 'profile_on';
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
