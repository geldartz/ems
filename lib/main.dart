import 'package:ems/globals/providers/AuthProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'globals/auth_guard.dart';
import 'globals/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final authService = AuthService();
    final appRouter = AppRouter();

    return MaterialApp.router(
      routerConfig: appRouter.config(),
      theme: ThemeData.light().copyWith(
        pageTransitionsTheme: const PageTransitionsTheme(builders: {
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        }),
      ),
      title: 'Employee Management System',
      debugShowCheckedModeBanner: false,
      builder: (_, router) {
        return ChangeNotifierProvider<AuthService>(
            create: (_) => authService,
            child: MultiProvider(providers: [
              ChangeNotifierProvider<AuthProvider>(create: (_) => AuthProvider()),
            ], child: router!));
      },
    );
  }
}
