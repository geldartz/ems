import 'package:auto_route/auto_route.dart';
import 'package:ems/globals/router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      path: '/home',
      page: MainholderRouter.page,
      children: [
        AutoRoute(path: 'home', page: HomepageRouter.page),
        AutoRoute(path: 'logs', page: LogsRouter.page),
        AutoRoute(path: 'notification', page: NotificationRouter.page),
        AutoRoute(path: 'account', page: AccountRouter.page),
      ],
    ),
    AutoRoute(path: '/', page: LoginRouter.page),
  ];
}

// class $AppRouter {}
