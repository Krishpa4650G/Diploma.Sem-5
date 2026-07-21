import 'package:flutter/material.dart';
class p1 extends StatelessWidget {
  const p1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text("Asset image demo"),
      ),
      body: Center(
        child: Image.asset("assets/batman.jpg"),
      ),
    );
  }
} 