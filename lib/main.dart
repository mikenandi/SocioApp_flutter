import 'package:flutter/material.dart';
import 'package:flutter_learn_basics/config/app_routes.dart';
import 'package:flutter_learn_basics/styles/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Urbanist',
        scaffoldBackgroundColor: AppColors.background,
        brightness: Brightness.dark,
      ),
      // home: const TestScreen(),
      initialRoute: AppRoutes.login,
      routes: AppRoutes.screens,
    );
  }
}
