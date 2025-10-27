import 'package:flutter/material.dart';
import 'package:primo_progetto/views/profile_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Palette di colori")),
      body: Center(
        child: IconButton(
          iconSize: 100,
          color: Colors.grey,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileView()),
            );
          },
          icon: Icon(Icons.person),
        ),
      ),
    );
  }
}
