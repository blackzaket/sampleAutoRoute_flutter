import 'package:auto_route/auto_route.dart';

import '../ui/main_list.dart';
import '../ui/main_page.dart';
import '../ui/main_setting.dart';
import '../ui/se_page.dart';
import '../ui/third_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: MyMain,
      initial: true,
      children: [
        AutoRoute(
          page: MainList,
        ),
        AutoRoute(
          page: MainSetting,
        ),
      ],
    ),
    AutoRoute(page: Second),
    AutoRoute(page: ThirdMain),
  ],
)
class $AppRouter {}
