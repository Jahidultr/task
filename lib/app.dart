import 'package:flutter/material.dart';
import 'package:task/ui/screens/splash_screen.dart';

class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(textTheme: const TextTheme()),
      home: SplashScreen(),
    );
  }
}
