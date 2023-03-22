
import 'package:calculadora_flutter/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor:Colors.black, // define a cor de fundo
          selectedItemColor: Color.fromARGB(200, 68, 67, 67),
          unselectedItemColor: Color.fromARGB(200, 68, 67, 67),
        ),
      ),
      home: const PageHome(),
    );
  }
}
