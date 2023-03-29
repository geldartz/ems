// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:ems/privatePages/account.dart' as _i1;
import 'package:ems/privatePages/home.dart' as _i2;
import 'package:ems/privatePages/logs.dart' as _i3;
import 'package:ems/privatePages/mainholder.dart' as _i4;
import 'package:ems/privatePages/notification.dart' as _i5;
import 'package:ems/publicPages/login.dart' as _i6;
import 'package:flutter/material.dart' as _i8;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    AccountRouter.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AccountPage(),
      );
    },
    HomepageRouter.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.Homepage(),
      );
    },
    LogsRouter.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.LogsPage(),
      );
    },
    MainholderRouter.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.MainHolder(),
      );
    },
    NotificationRouter.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.NotificationPage(),
      );
    },
    LoginRouter.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.LoginPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AccountPage]
class AccountRouter extends _i7.PageRouteInfo<void> {
  const AccountRouter({List<_i7.PageRouteInfo>? children})
      : super(
          AccountRouter.name,
          initialChildren: children,
        );

  static const String name = 'AccountRouter';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.Homepage]
class HomepageRouter extends _i7.PageRouteInfo<void> {
  const HomepageRouter({List<_i7.PageRouteInfo>? children})
      : super(
          HomepageRouter.name,
          initialChildren: children,
        );

  static const String name = 'HomepageRouter';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LogsPage]
class LogsRouter extends _i7.PageRouteInfo<void> {
  const LogsRouter({List<_i7.PageRouteInfo>? children})
      : super(
          LogsRouter.name,
          initialChildren: children,
        );

  static const String name = 'LogsRouter';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.MainHolder]
class MainholderRouter extends _i7.PageRouteInfo<void> {
  const MainholderRouter({List<_i7.PageRouteInfo>? children})
      : super(
          MainholderRouter.name,
          initialChildren: children,
        );

  static const String name = 'MainholderRouter';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.NotificationPage]
class NotificationRouter extends _i7.PageRouteInfo<void> {
  const NotificationRouter({List<_i7.PageRouteInfo>? children})
      : super(
          NotificationRouter.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRouter';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.LoginPage]
class LoginRouter extends _i7.PageRouteInfo<void> {
  const LoginRouter({List<_i7.PageRouteInfo>? children})
      : super(
          LoginRouter.name,
          initialChildren: children,
        );

  static const String name = 'LoginRouter';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
