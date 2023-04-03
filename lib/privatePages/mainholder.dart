import 'package:auto_route/auto_route.dart';
import 'package:ems/globals/router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'MainholderRouter')
class MainHolder extends StatefulWidget {
  const MainHolder({super.key});

  @override
  State<MainHolder> createState() => _MainHolderState();
}

class _MainHolderState extends State<MainHolder> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        ClockInRouter(),
        HomepageRouter(),
        LogsRouter(),
        NotificationRouter(),
        AccountRouter(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), label: 'Logs'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: 'Notifications'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_rounded), label: 'Account'),
          ],
        );
      },
    );
  }
}
