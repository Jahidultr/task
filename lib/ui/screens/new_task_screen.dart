import 'package:flutter/material.dart';
import 'package:task/ui/screens/add_new_task_screen.dart';
import 'package:task/ui/screens/task_summary_task.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildSummarySection(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onTabAddFAB,
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildSummarySection() {
    return const Padding(
      padding: EdgeInsets.all(8),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            TaskSummaryCard(
              count: 01,
              title: 'New',
            ),
            TaskSummaryCard(
              count: 2,
              title: 'Completed',
            ),
            TaskSummaryCard(
              count: 3,
              title: 'Cancelled',
            ),
            TaskSummaryCard(
              count: 4,
              title: 'progress',
            ),
          ],
        ),
      ),
    );
  }

  void _onTabAddFAB() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AddNewTaskScreen()),
    );
  }
}
