import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/fish_model.dart';
import '../position/middle.dart';

class SpicyA extends StatelessWidget {
  const SpicyA({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Fish number, ${Provider.of<FishModel>(context).number}',
          style: const TextStyle(fontSize: 16, color: Colors.red),
        ),
        Text(
          'Fish size, ${Provider.of<FishModel>(context).size}',
          style: const TextStyle(
              fontSize: 16, color: Colors.red, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        const Middle(),
      ],
    );
  }
}
