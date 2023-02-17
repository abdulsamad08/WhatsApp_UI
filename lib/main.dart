import 'package:flutter/material.dart';
import 'package:whatsapp_ui/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' Demo',
      // theme: ThemeData(primarySwatch: MaterialColor(Color(0xFF3399FF))),
      home: Home(),
    );
  }
}
