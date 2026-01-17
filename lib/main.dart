import 'package:flutter/material.dart';
import 'package:skill_swap_app/core/config/router/router.dart';
import 'package:skill_swap_app/core/config/router/routers_name.dart';
import 'package:skill_swap_app/core/config/theme/light_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(SkillSwapApp());
}

class SkillSwapApp extends StatelessWidget {
  const SkillSwapApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: RoutersName.loginScreen,
      theme: lightTheme,
      navigatorKey: navigatorKey,
    );
  }
}
