import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/fish_model.dart';
import 'models/seafish_model.dart';
import 'screens/fish_order.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) =>
              FishModel(name: 'Salmon', number: 10, size: 'big'),
          child: const MyApp(),
        ),
        ChangeNotifierProvider(
          create: (context) =>
              SeaFishModel(name: 'Tuna', tunaNumber: 0, size: 'middle'),
          child: const MyApp(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const FishOrder(),
    );
  }
}
