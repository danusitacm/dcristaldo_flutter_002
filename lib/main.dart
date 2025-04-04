import 'package:flutter/material.dart';
import 'stateless_example.dart';
import 'stateful_example.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Widgets'),
        ),
        body: Center(
          child: Builder( // Agregar un Builder para proporcionar un nuevo contexto
            builder: (context) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FixedTextScreen(),
                      ),
                    );
                  },
                  child: const Text('Ir a StatelessWidget'),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CounterScreen(),
                      ),
                    );
                  },
                  child: const Text('Ir a StatefulWidget'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
