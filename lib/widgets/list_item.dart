import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final int currentNumber;
  const ListItem({
    super.key,
    required this.currentNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.primaries[currentNumber % Colors.primaries.length],
      child: FittedBox(
        child: Text(currentNumber.toString()),
      ),
    );
  }
}
