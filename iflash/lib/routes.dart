import 'package:flutter/material.dart';
import 'package:iflash/pages/carrinho.dart';
import 'package:iflash/pages/home.dart';
import 'package:iflash/pages/itens.dart';

Map<String, WidgetBuilder> routes = {
  AppRoutes.home: (context) => const HomePage(),
  AppRoutes.itens: (context) => const PageItens(),
  AppRoutes.carrinho: (context) => const PageCarrinho(),
};

class AppRoutes {
  static const String home = '/';
  static const String itens = '/itens';
  static const String carrinho = '/carrinho';
}
