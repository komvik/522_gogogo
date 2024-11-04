import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => MainAppState();
}

class MainAppState extends State<MainApp> {
  String strGo = "Go";

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
              ElevatedButton(
                  onPressed: () async {
                    String gogogo = await tripleString(strGo);
                    setState(() {
                      strGo = gogogo;
                    });
                  },
                  child: const Text("pres me")),
            ],
          ),
        ),
      ),
    );
  }
}

Future<String> tripleString(String str) async {
  await Future.delayed(const Duration(seconds: 2));
  return str * 3;
}
