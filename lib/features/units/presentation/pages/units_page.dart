import 'package:flutter/material.dart' hide AppBar;
import 'package:ok_app/config/color_theme.dart';
import 'package:ok_app/features/app/presentation/widgets/app_bar.dart';
import 'package:ok_app/features/units/presentation/widgets/units_item_widget.dart';

class UnitsPage extends StatelessWidget {
  const UnitsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            ColorTheme.mainBarBackgroundFrom,
            ColorTheme.mainBarBackgroundTo,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: CustomScrollView(
          slivers: [
            const AppBar(title: 'Ok App', imagePath: ''),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return UnitsItemWidget(index: index);
                },
                childCount: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
