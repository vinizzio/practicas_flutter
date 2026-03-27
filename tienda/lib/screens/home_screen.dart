import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nuestra Tienda"),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Icon(Icons.account_circle_outlined),
          )
        ],
      ),
    );
  }
}