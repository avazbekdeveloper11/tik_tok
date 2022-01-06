import 'package:dars20/screens/home_page/home_page.dart';
import 'package:flutter/material.dart';

class Routergenerator {
  static generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomePage());
    }
  }
}
