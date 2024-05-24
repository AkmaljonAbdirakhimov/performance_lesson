import 'package:flutter/material.dart';
import 'package:performance_lesson/widgets/list_item.dart';

class HighPerformanceScreen extends StatelessWidget {
  const HighPerformanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('High Performance 🧐✅')),
      body: Center(
        child: ListView.builder(
          itemCount: 100000000,
          itemBuilder: (context, index) => ListItem(
            currentNumber: index,
          ),
        ),
      ),
    );
  }
}
