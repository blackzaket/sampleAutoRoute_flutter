import 'package:auto_route/auto_route.dart';

import '../ui/homepage.dart';
import '../ui/postpage.dart';
import '../ui/setting_page.dart';
import '../ui/single_postpage.dart';
import '../ui/user_profilepage.dart';
import '../ui/users_page.dart';



@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: HomePage,
      children: [
        AutoRoute(
          path: 'posts',
          name: 'PostsRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: PostsPage),
            AutoRoute(path: ':postId', page: SinglePostPage),
          ],
        ),
        AutoRoute(
          path: 'users',
          name: 'UsersRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: UsersPage),
            AutoRoute(path: ':userId', page: UserProfilePage),
          ],
        ),
        AutoRoute(
          path: 'settings',
          name: 'SettingsRouter',
          page: SettingsPage,
        )
      ],
    )
  ],
)
class $AppRouter {}
