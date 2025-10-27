import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileView());
}

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pagina profilo")),
      body: Center(
        child: Text(
          "Pagina del profilo",
          style: TextStyle(fontSize: 34, color: Colors.red),
        ),
      ),
    );
  }
}
