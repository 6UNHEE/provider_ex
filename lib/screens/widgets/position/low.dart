import 'package:flutter/material.dart';

import '../spicy/spicy_c.dart';

class Low extends StatelessWidget {
  const Low({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          '가장 아래!!',
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(
          height: 20,
        ),
        SpicyC(),
      ],
    );
  }
}
