import 'package:flutter/material.dart';

void main() {
  runApp(Memestan());
}

class Memestan extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: Text('Welcome to mem')),
      ),
    );
  }
}
