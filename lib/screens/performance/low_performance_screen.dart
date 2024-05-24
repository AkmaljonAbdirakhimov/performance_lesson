import 'package:flutter/material.dart';
import 'package:performance_lesson/widgets/list_item.dart';

class LowPerformanceScreen extends StatelessWidget {
  const LowPerformanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Low Performance 🫣❌')),
      body: ListView(
        children: [
          for (var i = 0; i < 100000000; i++) ListItem(currentNumber: i)
        ],
      ),
    );
  }
}
