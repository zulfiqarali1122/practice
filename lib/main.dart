import 'package:flutter/material.dart';

void main() {
  runApp(const Memestan());
}

class Memestan extends StatelessWidget {
  const Memestan({Key ? key}) : super(key : key);
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(child: Text('Welcome to mem')),
      ),
    );
  }
}
