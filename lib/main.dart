import 'package:flutter/material.dart';
import 'package:uidesign/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'uidesign',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: const Color.fromARGB(255, 178, 178, 178),
      ),
      home: const ScreenSplash(),
    );
  }
}
