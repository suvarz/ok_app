import 'package:ok_app/features/app_page/domain/entities/app_page_entity.dart';
import 'package:ok_app/features/app_page/domain/entities/header_title_entity.dart';
import 'package:ok_app/features/app_page/domain/entities/tab_bar_title_entity.dart';
import 'package:ok_app/features/app_page/presentation/pages/app_page.dart';

class UnitsPage extends AppPage {
  const UnitsPage({super.key})
      : super(
          appPageEntity: const AppPageEntity(
            headerTitle: HeaderTitleEntity(
              title: 'Unit 11',
              // subTitle: 'Настоящее время - Present Perfect',
            ),
            tabBarTitles: [
              // TabBarTitleEntity(action: '/', title: 'Lesson'),
              // TabBarTitleEntity(action: '/', title: 'Tests'),
              // TabBarTitleEntity(action: '/', title: 'Audio'),
            ],
          ),
        );
}

/* static const List<HeaderTabBarItemDto> _tabs = [
    HeaderTabBarItemDto(action: '/lesson', title: 'Lesson'),
    HeaderTabBarItemDto(action: '/tests', title: 'Tests'),
    HeaderTabBarItemDto(action: '/audio', title: 'Audio'),
  ];*/

/*
  const AppPageEntity(
      // title: 'Title',
      // tabBarTitles: [TabBarTitleEntity(action: '/', title: 'Lesson')],
      // youtubeVideoId: '123',
      // text: 'text',
      // listItems: [],
      );
 */
