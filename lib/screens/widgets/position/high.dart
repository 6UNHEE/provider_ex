import 'package:flutter/material.dart';

import '../spicy/spicy_a.dart';

class High extends StatelessWidget {
  const High({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          '가장 위!',
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(
          height: 20,
        ),
        SpicyA(),
      ],
    );
  }
}
