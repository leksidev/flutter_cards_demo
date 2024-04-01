import 'package:flutter/material.dart';
import 'package:flutter_cards_demo/card_providers.dart';
import 'package:flutter_cards_demo/features/home_screen/presentation/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => RotationProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => DxProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => DyProvider(),
        ),
      ],
      child: const MaterialApp(
        home: SafeArea(
          child: MainScreen(),
        ),
      ),
    );
  }
}
