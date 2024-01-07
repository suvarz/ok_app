import 'package:flutter/material.dart';
import 'package:ok_app/config/color_theme.dart';
import 'package:ok_app/features/app_page/domain/entities/app_page_entity.dart';
import 'package:ok_app/features/app_page/presentation/widgets/header_card_widget.dart';
import 'package:ok_app/features/app_page/presentation/widgets/header_tab_bar_widget.dart';
import 'package:ok_app/features/app_page/presentation/widgets/header_title_widget.dart';

class AppPage extends StatefulWidget {
  final AppPageEntity _appPageEntity;
  static const double headerTopMargin = 80;
  static const double contentBorderRadius = 40;

  const AppPage({
    super.key,
    required AppPageEntity appPageEntity,
  }) : _appPageEntity = appPageEntity;

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  late AppPageEntity appPageEntity;

  @override
  void initState() {
    super.initState();
    appPageEntity = widget._appPageEntity;
  }

  @override
  Widget build(BuildContext context) {
    HeaderTitleWidget? headerTitleWidget = appPageEntity.headerTitle != null
        ? HeaderTitleWidget(headerTitle: appPageEntity.headerTitle!)
        : null;

    return Stack(
      children: [
        Container(
          color: ColorTheme.mainBackground,
        ),
        Container(
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
          height: AppPage.headerTopMargin +
              (headerTitleWidget != null ? headerTitleWidget.height : 0) +
              (appPageEntity.headerCard != null ? HeaderCardWidget.height : 0) +
              (appPageEntity.tabBarTitles.isNotEmpty
                  ? HeaderTabBarWidget.height
                  : 0) +
              AppPage.contentBorderRadius,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  if (headerTitleWidget != null) headerTitleWidget,
                  if (appPageEntity.headerCard != null)
                    HeaderCardWidget(headerCard: appPageEntity.headerCard!),
                  if (appPageEntity.tabBarTitles.isNotEmpty)
                    HeaderTabBarWidget(tabs: appPageEntity.tabBarTitles),
                  Container(
                    decoration: BoxDecoration(
                      color: ColorTheme.mainBackground,
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(AppPage.contentBorderRadius),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: ColorTheme.darkBackground,
                          spreadRadius: -1,
                          blurRadius: 4,
                          offset: const Offset(0, -4),
                        ),
                      ],
                    ),
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(25),
                          child: Row(
                            children: [
                              Text('data'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
