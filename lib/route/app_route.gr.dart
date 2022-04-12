// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../ui/main_list.dart' as _i4;
import '../ui/main_page.dart' as _i1;
import '../ui/main_setting.dart' as _i5;
import '../ui/se_page.dart' as _i2;
import '../ui/third_page.dart' as _i3;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    MyMain.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MyMain());
    },
    Second.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.Second());
    },
    ThirdMain.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ThirdMain());
    },
    MainList.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.MainList());
    },
    MainSetting.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.MainSetting());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(MyMain.name, path: '/', children: [
          _i6.RouteConfig(MainList.name,
              path: 'main-list', parent: MyMain.name),
          _i6.RouteConfig(MainSetting.name,
              path: 'main-setting', parent: MyMain.name)
        ]),
        _i6.RouteConfig(Second.name, path: '/Second'),
        _i6.RouteConfig(ThirdMain.name, path: '/third-main')
      ];
}

/// generated route for
/// [_i1.MyMain]
class MyMain extends _i6.PageRouteInfo<void> {
  const MyMain({List<_i6.PageRouteInfo>? children})
      : super(MyMain.name, path: '/', initialChildren: children);

  static const String name = 'MyMain';
}

/// generated route for
/// [_i2.Second]
class Second extends _i6.PageRouteInfo<void> {
  const Second() : super(Second.name, path: '/Second');

  static const String name = 'Second';
}

/// generated route for
/// [_i3.ThirdMain]
class ThirdMain extends _i6.PageRouteInfo<void> {
  const ThirdMain() : super(ThirdMain.name, path: '/third-main');

  static const String name = 'ThirdMain';
}

/// generated route for
/// [_i4.MainList]
class MainList extends _i6.PageRouteInfo<void> {
  const MainList() : super(MainList.name, path: 'main-list');

  static const String name = 'MainList';
}

/// generated route for
/// [_i5.MainSetting]
class MainSetting extends _i6.PageRouteInfo<void> {
  const MainSetting() : super(MainSetting.name, path: 'main-setting');

  static const String name = 'MainSetting';
}
