import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_ex/models/fish_model.dart';

import 'widgets/position/high.dart';

class FishOrder extends StatelessWidget {
  const FishOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fish Order'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Fish name: ${Provider.of<FishModel>(context).name}',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            const High(),
          ],
        ),
      ),
    );
  }
}
