import 'package:financas/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:financas/pages/entradas.dart';

Map<String, WidgetBuilder> routes = {
  AppRoutes.home: (context) => const HomePage(),
  AppRoutes.entradas: (context) => const EntradasPage(),
};

class AppRoutes {
  static const String home = '/';
  static const String entradas = '/entradas';
}