import 'package:auto_route/auto_route.dart';
import 'package:ems/globals/auth_guard.dart';
import 'package:ems/globals/router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();
  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      path: '/',
      page: MainholderRouter.page,
      guards: [AuthGuard()],
      children: [
        AutoRoute(page: HomeMenuRouter.page, path: 'home', children: [
          AutoRoute(page: HomepageRouter.page, path: ''),
          AutoRoute(page: TestRouter.page, path: 'test'),
          AutoRoute(page: HomeSinglePageRouter.page, path: ':pageId'),
        ]),
        AutoRoute(path: 'logs', page: LogsRouter.page),
        AutoRoute(path: 'notification', page: NotificationRouter.page),
        AutoRoute(path: 'account', page: AccountRouter.page),
      ],
    ),
    AutoRoute(path: '/login', page: LoginRouter.page),
  ];
}

@RoutePage(name: 'HomeMenuRouter')
class HomeMenuRouterPage extends AutoRouter {
  const HomeMenuRouterPage({super.key});
}


// class $AppRouter {}
