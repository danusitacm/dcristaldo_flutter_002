import 'package:flutter/material.dart';

class FixedTextScreen extends StatelessWidget {
  const FixedTextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StatelessWidget Ejemplo'),
      ),
      body: const Center(
        child: Text('Este es un texto fijo'),
      ),
    );
  }
}