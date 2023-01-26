import 'package:flutter/material.dart';
import 'package:idaman_diskominfo/screens/idaman_sp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Idaman',
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      home: const IdamanSp(),
    );
  }
}
