import 'package:ok_app/features/app_page/domain/entities/header_card_entity.dart';
import 'package:ok_app/features/app_page/domain/entities/header_title_entity.dart';
import 'package:ok_app/features/app_page/domain/entities/list_item_entity.dart';
import 'package:ok_app/features/app_page/domain/entities/tab_bar_title_entity.dart';

class AppPageEntity {
  final HeaderTitleEntity? headerTitle;
  final HeaderCardEntity? headerCard;
  final List<TabBarTitleEntity> tabBarTitles;
  final String? youtubeVideoId;
  final String? text;
  final List<ListItemEntity> listItems;

  const AppPageEntity({
    this.headerTitle,
    this.headerCard,
    this.tabBarTitles = const [],
    this.youtubeVideoId,
    this.text,
    this.listItems = const [],
  });
}
