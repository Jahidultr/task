import 'package:flutter/material.dart';

class TaskCard extends StatefulWidget {
  const TaskCard({
    super.key,
  });

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Morning Yoga Session',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const Text(
              'Start your day with a gentle yoga routine. Focus on deep breathing, stretching. It sets a peaceful tone for the day.',
            ),
            const Text(
              'Date:10-05-24',
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildTaskStatusChip(),
                Wrap(
                  children: [
                    IconButton(
                      onPressed: _onTabEditButton,
                      icon: const Icon(Icons.edit_document),
                    ),
                    IconButton(
                      onPressed: _onTabDeleteButton,
                      icon: const Icon(Icons.delete),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void _onTabEditButton() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Edit Status'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              'New',
              'Completed',
              'Canceled',
              'Progress',
            ].map((e) {
              return ListTile(
                onTap: () {},
                title: Text(e),
              );
            }).toList(),
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: const Text('Ok'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  void _onTabDeleteButton() {}

  Widget _buildTaskStatusChip() {
    return Chip(
      label: const Text(
        'New',
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: const BorderSide(
          color: Colors.purple,
        ),
      ),
    );
  }
}
