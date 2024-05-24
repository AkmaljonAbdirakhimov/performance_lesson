import 'package:flutter/material.dart';
import 'package:performance_lesson/screens/network/network_screen.dart';
import 'package:performance_lesson/screens/performance/high_performance_screen.dart';
import 'package:performance_lesson/screens/performance/low_performance_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bosh Sahifa"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) {
                      return const LowPerformanceScreen();
                    },
                  ),
                );
              },
              child: const Text("Samaradorligi past sahifa"),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) {
                      return const HighPerformanceScreen();
                    },
                  ),
                );
              },
              child: const Text("Samaradorligi yuqori sahifa"),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) {
                      return const NetworkScreen();
                    },
                  ),
                );
              },
              child: const Text("Internet so'rovlari sahifasi"),
            ),
          ],
        ),
      ),
    );
  }
}
