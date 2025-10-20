import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(const KelasBaru());
}

class KelasBaru extends StatelessWidget {
  const KelasBaru({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
} 


