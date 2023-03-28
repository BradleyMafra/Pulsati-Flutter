import 'package:financas/pages/home.dart';
import 'package:flutter/material.dart';

class EntradasPage extends StatelessWidget {
  const EntradasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 176, 13, 252),
        title: TextButton(
          onPressed: () {},
          child: const Text(
            'Entradas',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Column(
        children: [
          Text('Entradas'),
        ],
      ),
    );
  }
}
