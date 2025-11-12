import 'package:flutter/material.dart';
import 'package:primo_progetto/views/profile_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Widget Base Demo', home: const HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('Widget Base')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Se lo schermo è più largo di 600 pixel -> layout orizzontale
          bool isWide = constraints.maxWidth > 600;

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: isWide
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [_buildInfoBox(), _buildButtons()],
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildInfoBox(),
                      const SizedBox(height: 20),
                      _buildButtons(),
                    ],
                  ),
          );
        },
      ),
    );
  }

  // 🔹 Un semplice Container
  Widget _buildInfoBox() {
    return Container(
      width: 200,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(12),
      ),
      alignment: Alignment.center,
      child: const Text(
        'Ciao Flutter!',
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }

  // 🔹 Una Row con IconButton
  Widget _buildButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            debugPrint('Hai premuto il cuore ❤️');
          },
          icon: const Icon(Icons.favorite, color: Colors.pink, size: 30),
        ),
        IconButton(
          onPressed: () {
            debugPrint('Hai premuto la stella ⭐');
          },
          icon: const Icon(Icons.star, color: Colors.amber, size: 30),
        ),
        IconButton(
          onPressed: () {
            debugPrint('Hai premuto il pollice 👍');
          },
          icon: const Icon(Icons.thumb_up, color: Colors.blue, size: 30),
        ),
      ],
    );
  }
}
