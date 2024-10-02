import 'package:flutter/material.dart';
import 'package:task/ui/screens/cancelled_task_screen.dart';
import 'package:task/ui/screens/completed_task_screen.dart';
import 'package:task/ui/screens/new_task_screen.dart';
import 'package:task/ui/screens/progress_task_screen.dart';

import '../widgets/tm_app_bar.dart';

class MainBottomNavBarScreen extends StatefulWidget {
  const MainBottomNavBarScreen({super.key});

  @override
  State<MainBottomNavBarScreen> createState() => _MainBottomNavBarScreenState();
}

class _MainBottomNavBarScreenState extends State<MainBottomNavBarScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    NewTaskScreen(),
    CompletedTaskScreen(),
    CancelledTaskScreen(),
    ProgressTaskScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TMAppBar(),
      body: _screens[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        // backgroundColor: Colors.grey,
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int index) {
          _selectedIndex = index;
          setState(() {});
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.add_task),
            label: 'New Task',
          ),
          NavigationDestination(
            icon: Icon(Icons.incomplete_circle_rounded),
            label: 'Completed',
          ),
          NavigationDestination(
            icon: Icon(Icons.cancel_sharp),
            label: 'Cancelled',
          ),
          NavigationDestination(
            icon: Icon(Icons.add_chart_rounded),
            label: 'Progress',
          ),
        ],
      ),
    );
  }
}
