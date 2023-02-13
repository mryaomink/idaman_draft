import 'package:flutter/material.dart';

import 'package:idaman_diskominfo/screens/idaman_sp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier,
      builder: (_, ThemeMode currentMode, __) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Idaman',
          theme: ThemeData(
            primarySwatch: Colors.amber,
          ),
          darkTheme: ThemeData.dark(),
          themeMode: currentMode,
          home: const IdamanSp(),
        );
      },
    );
  }
}
