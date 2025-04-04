import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const InicioScreen(),
    );
  }
}

class InicioScreen extends StatelessWidget {
  const InicioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AcercaDeScreen(),
                  ),
                );
              },
              child: const Text('Ir a Acerca de'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContactoScreen(),
                  ),
                );
              },
              child: const Text('Ir a Contacto'),
            ),
          ],
        ),
      ),
    );
  }
}

class AcercaDeScreen extends StatelessWidget {
  const AcercaDeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Acerca de'),
      ),
      body: const Center(
        child: Text(
          'Sobre nosotros',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class ContactoScreen extends StatelessWidget {
  const ContactoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacto'),
      ),
      body: const Center(
        child: Text(
          'Contáctanos',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
