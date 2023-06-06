import 'package:dana_clone/pages/main_page.dart';
import 'package:dana_clone/utils/dana_clone_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'provider/bottom_navigation_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = DanaCloneTheme.themeData();

    return ChangeNotifierProvider(
      create: (context) => BottomNavigationProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        builder: (context, child) =>
            ResponsiveScaledBox(width: 600, child: child!),
        title: 'DANA clone',
        theme: theme,
        home: const MainPage(),
      ),
    );
  }
}
