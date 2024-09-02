import 'package:ejemplo_contruccion_soft/view/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

// ignore: must_be_immutable
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: scaffoldMessengerKey,
      home: Home(),
    );
  }
}
