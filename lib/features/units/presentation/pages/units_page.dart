import 'package:ok_app/features/app/presentation/pages/app_page.dart';

class UnitsPage extends AppPage {
  static const List<HeaderTabBarItemDto> _tabs = [
    HeaderTabBarItemDto(action: '/lesson', title: 'Lesson'),
    HeaderTabBarItemDto(action: '/tests', title: 'Tests'),
    HeaderTabBarItemDto(action: '/audio', title: 'Audio'),
  ];

  const UnitsPage({super.key}): super(tabs: const []);
}
