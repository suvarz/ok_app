import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ok_app/config/color_theme.dart';
import 'package:ok_app/config/constants.dart';

class AppNavBar extends StatefulWidget {
  const AppNavBar({super.key});

  @override
  State<AppNavBar> createState() => _AppNavBarState();
}

class _AppNavBarState extends State<AppNavBar> {
  int _currentIndex = 0;
  final List<BottomNavigationBarItem> _items = [];

  @override
  void initState() {
    super.initState();

    for (final linkMap in Constants.navBarLinks) {
      _items.add(
        BottomNavigationBarItem(
          backgroundColor: Colors.transparent,
          icon: NavBarIcon(
            path: linkMap['icon']!,
            color: ColorTheme.reverseMainText,
          ),
          activeIcon: NavBarIcon(
            path: linkMap['icon']!,
            color: ColorTheme.accent,
          ),
          label: linkMap['title']!,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Container(
        // color: Colors.white,
        height: 75,
        decoration: BoxDecoration(
          color: ColorTheme.navBarBackground,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 0,
              blurRadius: 8,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: BottomNavigationBar(
          elevation: 0,
          items: _items,
          currentIndex: _currentIndex,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: ColorTheme.accent,
          unselectedItemColor: ColorTheme.reverseMainText,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          backgroundColor: Colors.transparent,
          onTap: _onTap,
        ),
      ),
    );
  }

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

class NavBarIcon extends StatelessWidget {
  final String path;
  final Color color;

  const NavBarIcon({super.key, required this.path, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          path,
          colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
          height: 23,
          alignment: Alignment.topCenter,
        ),
        const SizedBox(height: 5),
      ],
    );
  }
}
