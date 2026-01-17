import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    // case RoutersName.loginScreen:
    // return MaterialPageRoute(
    //   // builder: (context) => const LoginScreen(),
    //   settings: const RouteSettings(name: RoutersName.loginScreen),
    // );

    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(body: Text('Wrong Path')),
      );
  }
}
