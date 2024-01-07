import 'package:flutter/material.dart';
import 'package:ok_app/features/app_page/domain/entities/tab_bar_title_entity.dart';
import 'package:ok_app/features/app_page/presentation/widgets/header_tab_bar_button_widget.dart';

class HeaderTabBarWidget extends StatelessWidget {
  static const double height = 50;
  final List<TabBarTitleEntity> _tabs;

  const HeaderTabBarWidget({super.key, required List<TabBarTitleEntity> tabs})
      : _tabs = tabs;

  @override
  Widget build(BuildContext context) {
    List<Widget> tabWidgets = [];
    for (int i = 0; i < _tabs.length; i++) {
      tabWidgets.add(
        HeaderTabBarButtonWidget(height: height, title: _tabs[i].title),
      );
      if (i < (_tabs.length - 1)) {
        tabWidgets.add(const SizedBox(width: 10));
      }
    }
    return Row(
      children: [
        Expanded(child: Container()),
        ...tabWidgets,
        Expanded(child: Container()),
      ],
    );
  }
}
