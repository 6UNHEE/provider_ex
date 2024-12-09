import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_ex/models/fish_model.dart';
import 'package:provider_ex/models/seafish_model.dart';

import '../position/low.dart';

class SpicyB extends StatelessWidget {
  const SpicyB({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Tuna number, ${Provider.of<SeaFishModel>(context).tunaNumber}',
          style: const TextStyle(
              fontSize: 16, color: Colors.red, fontWeight: FontWeight.bold),
        ),
        Text(
          'Fish size, ${Provider.of<FishModel>(context).size}',
          style: const TextStyle(
              fontSize: 16, color: Colors.red, fontWeight: FontWeight.bold),
        ),
        ElevatedButton(
          onPressed: () {
            Provider.of<SeaFishModel>(context, listen: false)
                .changeSeaFishNumber();
          },
          child: const Text('Sea fish number 증가!'),
        ),
        const SizedBox(
          height: 20,
        ),
        const Low(),
      ],
    );
  }
}
