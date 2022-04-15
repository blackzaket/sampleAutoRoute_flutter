// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i8;

import '../ui/homepage.dart' as _i1;
import '../ui/postpage.dart' as _i4;
import '../ui/setting_page.dart' as _i3;
import '../ui/single_postpage.dart' as _i5;
import '../ui/user_profilepage.dart' as _i7;
import '../ui/users_page.dart' as _i6;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    PostsRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    UsersRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    SettingsRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SettingsPage());
    },
    PostsRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.PostsPage());
    },
    SinglePostRoute.name: (routeData) {
      final args = routeData.argsAs<SinglePostRouteArgs>();
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.SinglePostPage(key: args.key, userId: args.userId));
    },
    UsersRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.UsersPage());
    },
    UserProfileRoute.name: (routeData) {
      final args = routeData.argsAs<UserProfileRouteArgs>();
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.UserProfilePage(key: args.key, userId: args.userId));
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(HomeRoute.name, path: '/', children: [
          _i2.RouteConfig(PostsRouter.name,
              path: 'posts',
              parent: HomeRoute.name,
              children: [
                _i2.RouteConfig(PostsRoute.name,
                    path: '', parent: PostsRouter.name),
                _i2.RouteConfig(SinglePostRoute.name,
                    path: ':postId', parent: PostsRouter.name)
              ]),
          _i2.RouteConfig(UsersRouter.name,
              path: 'users',
              parent: HomeRoute.name,
              children: [
                _i2.RouteConfig(UsersRoute.name,
                    path: '', parent: UsersRouter.name),
                _i2.RouteConfig(UserProfileRoute.name,
                    path: ':userId', parent: UsersRouter.name)
              ]),
          _i2.RouteConfig(SettingsRouter.name,
              path: 'settings', parent: HomeRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute({List<_i2.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class PostsRouter extends _i2.PageRouteInfo<void> {
  const PostsRouter({List<_i2.PageRouteInfo>? children})
      : super(PostsRouter.name, path: 'posts', initialChildren: children);

  static const String name = 'PostsRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class UsersRouter extends _i2.PageRouteInfo<void> {
  const UsersRouter({List<_i2.PageRouteInfo>? children})
      : super(UsersRouter.name, path: 'users', initialChildren: children);

  static const String name = 'UsersRouter';
}

/// generated route for
/// [_i3.SettingsPage]
class SettingsRouter extends _i2.PageRouteInfo<void> {
  const SettingsRouter() : super(SettingsRouter.name, path: 'settings');

  static const String name = 'SettingsRouter';
}

/// generated route for
/// [_i4.PostsPage]
class PostsRoute extends _i2.PageRouteInfo<void> {
  const PostsRoute() : super(PostsRoute.name, path: '');

  static const String name = 'PostsRoute';
}

/// generated route for
/// [_i5.SinglePostPage]
class SinglePostRoute extends _i2.PageRouteInfo<SinglePostRouteArgs> {
  SinglePostRoute({_i8.Key? key, required dynamic userId})
      : super(SinglePostRoute.name,
            path: ':postId',
            args: SinglePostRouteArgs(key: key, userId: userId));

  static const String name = 'SinglePostRoute';
}

class SinglePostRouteArgs {
  const SinglePostRouteArgs({this.key, required this.userId});

  final _i8.Key? key;

  final dynamic userId;

  @override
  String toString() {
    return 'SinglePostRouteArgs{key: $key, userId: $userId}';
  }
}

/// generated route for
/// [_i6.UsersPage]
class UsersRoute extends _i2.PageRouteInfo<void> {
  const UsersRoute() : super(UsersRoute.name, path: '');

  static const String name = 'UsersRoute';
}

/// generated route for
/// [_i7.UserProfilePage]
class UserProfileRoute extends _i2.PageRouteInfo<UserProfileRouteArgs> {
  UserProfileRoute({_i8.Key? key, required dynamic userId})
      : super(UserProfileRoute.name,
            path: ':userId',
            args: UserProfileRouteArgs(key: key, userId: userId));

  static const String name = 'UserProfileRoute';
}

class UserProfileRouteArgs {
  const UserProfileRouteArgs({this.key, required this.userId});

  final _i8.Key? key;

  final dynamic userId;

  @override
  String toString() {
    return 'UserProfileRouteArgs{key: $key, userId: $userId}';
  }
}
