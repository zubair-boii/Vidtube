import 'package:flutter/material.dart';
import 'package:flutter_vidtube/core/theme/app_theme.dart';
import 'package:flutter_vidtube/features/home/presentation/pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.darkTheme(),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
