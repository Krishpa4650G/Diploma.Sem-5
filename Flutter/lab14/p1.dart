import 'package:flutter/material.dart';

class p1 extends StatelessWidget {
  p1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple 3D PageView"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: PageController(
            initialPage: 1,
            viewportFraction: 0.8
        ),
        children: [
          buildPage('Page 1', Colors.red),
          buildPage('Page 2', Colors.blue),
          buildPage('Page 3', Colors.green),
          buildPage('Page 4', Colors.yellow),
        ],
      ),
    );
  }

  Widget buildPage(String title, Color color){
    return Card(
      color: color,
      child: Center(
        child: Text(title, style: TextStyle(fontSize: 30, color: Colors.white)),
      ),
    );
  }
}
