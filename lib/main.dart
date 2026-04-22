import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LDSW 3.4 Utilización de widgets',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Actividad 3.4 - Widgets'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // TEXT
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Ejemplo de utilización de widgets básicos en Flutter por: Rafael Cortez',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            // CONTAINER
            Container(
              margin: const EdgeInsets.all(12),
              padding: const EdgeInsets.all(16),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.lightBlue.shade100,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.blue, width: 2),
              ),
              child: const Text(
                'Este es un Container que contiene texto y estilos visuales.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),

            // ROW
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                'Ejemplo de Row',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 70,
                  height: 70,
                  color: Colors.redAccent,
                ),
                Container(
                  width: 70,
                  height: 70,
                  color: Colors.green,
                ),
                Container(
                  width: 70,
                  height: 70,
                  color: Colors.orange,
                ),
              ],
            ),

            const SizedBox(height: 20),

            // COLUMN
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                'Ejemplo de Column',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(6),
                  width: 220,
                  height: 50,
                  color: Colors.purple.shade200,
                  child: const Center(child: Text('Elemento 1')),
                ),
                Container(
                  margin: const EdgeInsets.all(6),
                  width: 220,
                  height: 50,
                  color: Colors.purple.shade300,
                  child: const Center(child: Text('Elemento 2')),
                ),
                Container(
                  margin: const EdgeInsets.all(6),
                  width: 220,
                  height: 50,
                  color: Colors.purple.shade400,
                  child: const Center(child: Text('Elemento 3')),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // STACK
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                'Ejemplo de Stack',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.yellow.shade700,
                  ),
                  Container(
                    width: 140,
                    height: 140,
                    color: Colors.blue.shade300,
                  ),
                  const Text(
                    'Stack',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}