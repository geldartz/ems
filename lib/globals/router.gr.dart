// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:ems/globals/router.dart' as _i1;
import 'package:ems/privatePages/account.dart' as _i2;
import 'package:ems/privatePages/home.dart' as _i3;
import 'package:ems/privatePages/HomePages/single_page.dart' as _i4;
import 'package:ems/privatePages/logs.dart' as _i5;
import 'package:ems/privatePages/mainholder.dart' as _i6;
import 'package:ems/privatePages/notification.dart' as _i7;
import 'package:ems/privatePages/test.dart' as _i8;
import 'package:ems/publicPages/login.dart' as _i9;
import 'package:flutter/material.dart' as _i11;

abstract class $AppRouter extends _i10.RootStackRouter {
  $AppRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    HomeMenuRouter.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeMenuRouterPage(),
      );
    },
    AccountRouter.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AccountPage(),
      );
    },
    HomepageRouter.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.Homepage(),
      );
    },
    HomeSinglePageRouter.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<HomeSinglePageRouterArgs>(
          orElse: () =>
              HomeSinglePageRouterArgs(pageId: pathParams.getInt('pageId')));
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.HomeSinglePage(
          key: args.key,
          pageId: args.pageId,
        ),
      );
    },
    LogsRouter.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.LogsPage(),
      );
    },
    MainholderRouter.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.MainHolder(),
      );
    },
    NotificationRouter.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.NotificationPage(),
      );
    },
    TestRouter.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.TextPage(),
      );
    },
    LoginRouter.name: (routeData) {
      final args = routeData.argsAs<LoginRouterArgs>(
          orElse: () => const LoginRouterArgs());
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.LoginPage(
          key: args.key,
          onLoginResult: args.onLoginResult,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeMenuRouterPage]
class HomeMenuRouter extends _i10.PageRouteInfo<void> {
  const HomeMenuRouter({List<_i10.PageRouteInfo>? children})
      : super(
          HomeMenuRouter.name,
          initialChildren: children,
        );

  static const String name = 'HomeMenuRouter';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AccountPage]
class AccountRouter extends _i10.PageRouteInfo<void> {
  const AccountRouter({List<_i10.PageRouteInfo>? children})
      : super(
          AccountRouter.name,
          initialChildren: children,
        );

  static const String name = 'AccountRouter';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i3.Homepage]
class HomepageRouter extends _i10.PageRouteInfo<void> {
  const HomepageRouter({List<_i10.PageRouteInfo>? children})
      : super(
          HomepageRouter.name,
          initialChildren: children,
        );

  static const String name = 'HomepageRouter';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomeSinglePage]
class HomeSinglePageRouter
    extends _i10.PageRouteInfo<HomeSinglePageRouterArgs> {
  HomeSinglePageRouter({
    _i11.Key? key,
    required int pageId,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          HomeSinglePageRouter.name,
          args: HomeSinglePageRouterArgs(
            key: key,
            pageId: pageId,
          ),
          rawPathParams: {'pageId': pageId},
          initialChildren: children,
        );

  static const String name = 'HomeSinglePageRouter';

  static const _i10.PageInfo<HomeSinglePageRouterArgs> page =
      _i10.PageInfo<HomeSinglePageRouterArgs>(name);
}

class HomeSinglePageRouterArgs {
  const HomeSinglePageRouterArgs({
    this.key,
    required this.pageId,
  });

  final _i11.Key? key;

  final int pageId;

  @override
  String toString() {
    return 'HomeSinglePageRouterArgs{key: $key, pageId: $pageId}';
  }
}

/// generated route for
/// [_i5.LogsPage]
class LogsRouter extends _i10.PageRouteInfo<void> {
  const LogsRouter({List<_i10.PageRouteInfo>? children})
      : super(
          LogsRouter.name,
          initialChildren: children,
        );

  static const String name = 'LogsRouter';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i6.MainHolder]
class MainholderRouter extends _i10.PageRouteInfo<void> {
  const MainholderRouter({List<_i10.PageRouteInfo>? children})
      : super(
          MainholderRouter.name,
          initialChildren: children,
        );

  static const String name = 'MainholderRouter';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i7.NotificationPage]
class NotificationRouter extends _i10.PageRouteInfo<void> {
  const NotificationRouter({List<_i10.PageRouteInfo>? children})
      : super(
          NotificationRouter.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRouter';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i8.TextPage]
class TestRouter extends _i10.PageRouteInfo<void> {
  const TestRouter({List<_i10.PageRouteInfo>? children})
      : super(
          TestRouter.name,
          initialChildren: children,
        );

  static const String name = 'TestRouter';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i9.LoginPage]
class LoginRouter extends _i10.PageRouteInfo<LoginRouterArgs> {
  LoginRouter({
    _i11.Key? key,
    void Function(bool)? onLoginResult,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          LoginRouter.name,
          args: LoginRouterArgs(
            key: key,
            onLoginResult: onLoginResult,
          ),
          initialChildren: children,
        );

  static const String name = 'LoginRouter';

  static const _i10.PageInfo<LoginRouterArgs> page =
      _i10.PageInfo<LoginRouterArgs>(name);
}

class LoginRouterArgs {
  const LoginRouterArgs({
    this.key,
    this.onLoginResult,
  });

  final _i11.Key? key;

  final void Function(bool)? onLoginResult;

  @override
  String toString() {
    return 'LoginRouterArgs{key: $key, onLoginResult: $onLoginResult}';
  }
}
