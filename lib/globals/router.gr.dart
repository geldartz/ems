// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:ems/privatePages/account.dart' as _i1;
import 'package:ems/privatePages/clockin.dart' as _i2;
import 'package:ems/privatePages/home.dart' as _i3;
import 'package:ems/privatePages/logs.dart' as _i4;
import 'package:ems/privatePages/mainholder.dart' as _i5;
import 'package:ems/privatePages/notification.dart' as _i6;
import 'package:ems/publicPages/ClockInPages/health_confirmation.dart' as _i10;
import 'package:ems/publicPages/ClockInPages/location_confirmation.dart' as _i7;
import 'package:ems/publicPages/ClockInPages/success_clockin.dart' as _i11;
import 'package:ems/publicPages/dashboard.dart' as _i8;
import 'package:ems/publicPages/login.dart' as _i9;
import 'package:flutter/material.dart' as _i13;

abstract class $AppRouter extends _i12.RootStackRouter {
  $AppRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    AccountRouter.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AccountPage(),
      );
    },
    ClockInRouter.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CheckIn(),
      );
    },
    HomepageRouter.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.Homepage(),
      );
    },
    LogsRouter.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.LogsPage(),
      );
    },
    MainholderRouter.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MainHolder(),
      );
    },
    NotificationRouter.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.NotificationPage(),
      );
    },
    LocationConfirmRouter.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.LocationConfirm(),
      );
    },
    Dashboard.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.Dashboard(),
      );
    },
    LoginRouter.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.LoginPage(),
      );
    },
    HealthConfirm.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.HealthConfirm(),
      );
    },
    SuccessClockInRouter.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.SuccessClockIn(),
      );
    },
  };
}

/// generated route for
/// [_i1.AccountPage]
class AccountRouter extends _i12.PageRouteInfo<void> {
  const AccountRouter({List<_i12.PageRouteInfo>? children})
      : super(
          AccountRouter.name,
          initialChildren: children,
        );

  static const String name = 'AccountRouter';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CheckIn]
class ClockInRouter extends _i12.PageRouteInfo<void> {
  const ClockInRouter({List<_i12.PageRouteInfo>? children})
      : super(
          ClockInRouter.name,
          initialChildren: children,
        );

  static const String name = 'ClockInRouter';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i3.Homepage]
class HomepageRouter extends _i12.PageRouteInfo<void> {
  const HomepageRouter({List<_i12.PageRouteInfo>? children})
      : super(
          HomepageRouter.name,
          initialChildren: children,
        );

  static const String name = 'HomepageRouter';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LogsPage]
class LogsRouter extends _i12.PageRouteInfo<void> {
  const LogsRouter({List<_i12.PageRouteInfo>? children})
      : super(
          LogsRouter.name,
          initialChildren: children,
        );

  static const String name = 'LogsRouter';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i5.MainHolder]
class MainholderRouter extends _i12.PageRouteInfo<void> {
  const MainholderRouter({List<_i12.PageRouteInfo>? children})
      : super(
          MainholderRouter.name,
          initialChildren: children,
        );

  static const String name = 'MainholderRouter';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i6.NotificationPage]
class NotificationRouter extends _i12.PageRouteInfo<void> {
  const NotificationRouter({List<_i12.PageRouteInfo>? children})
      : super(
          NotificationRouter.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRouter';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i7.LocationConfirm]
class LocationConfirmRouter extends _i12.PageRouteInfo<void> {
  const LocationConfirmRouter({List<_i12.PageRouteInfo>? children})
      : super(
          LocationConfirmRouter.name,
          initialChildren: children,
        );

  static const String name = 'LocationConfirmRouter';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i8.Dashboard]
class Dashboard extends _i12.PageRouteInfo<void> {
  const Dashboard({List<_i12.PageRouteInfo>? children})
      : super(
          Dashboard.name,
          initialChildren: children,
        );

  static const String name = 'Dashboard';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i9.LoginPage]
class LoginRouter extends _i12.PageRouteInfo<void> {
  const LoginRouter({List<_i12.PageRouteInfo>? children})
      : super(
          LoginRouter.name,
          initialChildren: children,
        );

  static const String name = 'LoginRouter';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i10.HealthConfirm]
class HealthConfirm extends _i12.PageRouteInfo<void> {
  const HealthConfirm({List<_i12.PageRouteInfo>? children})
      : super(
          HealthConfirm.name,
          initialChildren: children,
        );

  static const String name = 'HealthConfirm';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i11.SuccessClockIn]
class SuccessClockInRouter extends _i12.PageRouteInfo<void> {
  const SuccessClockInRouter({List<_i12.PageRouteInfo>? children})
      : super(
          SuccessClockInRouter.name,
          initialChildren: children,
        );

  static const String name = 'SuccessClockInRouter';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}
