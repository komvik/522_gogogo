import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final String strGo = "Go";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(strGo),
              const SizedBox(height: 20),
              ElevatedButton(onPressed: () {}, child: const Text("pres me")),
            ],
          ),
        ),
      ),
    );
  }
}

String tripleString(String str) {
  return str * 3;
}
