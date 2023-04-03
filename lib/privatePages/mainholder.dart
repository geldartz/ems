import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ems/globals/contants.dart';
import 'package:ems/globals/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

@RoutePage(name: 'MainholderRouter')
class MainHolder extends StatefulWidget {
  const MainHolder({super.key});

  @override
  State<MainHolder> createState() => _MainHolderState();
}

class _MainHolderState extends State<MainHolder> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AutoTabsRouter(
      routes: const [
        HomepageRouter(),
        LogsRouter(),
        NotificationRouter(),
        AccountRouter(),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
            body: child,
            bottomNavigationBar: AnimatedNotchBottomBar(
              pageController: PageController(initialPage: tabsRouter.activeIndex),
              color: Colors.white,
              showLabel: false,
              notchColor: priBlue,
              bottomBarItems: [
                BottomBarItem(
                  inActiveItem: const Icon(
                    Icons.home_outlined,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Padding(
                    padding: const EdgeInsets.all(0),
                    child: Lottie.asset("assets/lottie/Home.json", repeat: false, fit: BoxFit.contain),
                  ),
                  itemLabel: 'Home',
                ),
                BottomBarItem(
                  inActiveItem: const Icon(
                    Icons.calendar_month_outlined,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Padding(
                    padding: const EdgeInsets.all(0),
                    child: Lottie.asset("assets/lottie/Calendar.json", repeat: false, fit: BoxFit.contain),
                  ),
                  itemLabel: 'Logs',
                ),
                BottomBarItem(
                  inActiveItem: const Icon(
                    Icons.notifications_none_rounded,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Padding(
                    padding: const EdgeInsets.all(0),
                    child: Lottie.asset("assets/lottie/Bell.json", repeat: false, fit: BoxFit.contain),
                  ),
                  itemLabel: 'Logs',
                ),
                BottomBarItem(
                  inActiveItem: const Icon(
                    Icons.person_outline_rounded,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Padding(
                    padding: const EdgeInsets.all(0),
                    child: Lottie.asset("assets/lottie/Account.json", repeat: false, fit: BoxFit.contain),
                  ),
                  itemLabel: 'Account',
                ),
              ],
              onTap: (index) {
                tabsRouter.setActiveIndex(index);
              },
            ));
      },
    );
  }
}
