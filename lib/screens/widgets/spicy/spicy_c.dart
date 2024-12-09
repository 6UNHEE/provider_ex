import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_ex/models/fish_model.dart';

class SpicyC extends StatelessWidget {
  const SpicyC({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'number, ${Provider.of<FishModel>(context).number}',
          style: const TextStyle(
              fontSize: 16, color: Colors.red, fontWeight: FontWeight.bold),
        ),
        Text(
          'size, ${Provider.of<FishModel>(context).size}',
          style: const TextStyle(
              fontSize: 16, color: Colors.red, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            Provider.of<FishModel>(context, listen: false).changeFishNumber();
          },
          child: const Text('Fish number 증가'),
        ),
      ],
    );
  }
}
