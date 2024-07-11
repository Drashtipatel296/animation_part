import 'package:animation_part/Animation%20Widgets/home_screen.dart';
import 'package:animation_part/Drag%20&%20Drop%20Functionality/provider/game_provider.dart';
import 'package:animation_part/Drag%20&%20Drop%20Functionality/screens/home_screen.dart';
import 'package:animation_part/Hero%20Widget/screens/detail_screen.dart';
import 'package:animation_part/Hero%20Widget/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => GameProvider(),),
    ],
    child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
