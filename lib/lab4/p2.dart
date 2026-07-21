import 'package:flutter/material.dart';
class p2 extends StatelessWidget {
  const p2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text("Horizontal parts",style: TextStyle(color: Colors.white),),
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(color: Colors.blue,),
          ),
          Expanded(
            child: Container(color: Colors.cyan,),
          ),
          Expanded(child: Container(color: Colors.green),)
        ],
      ),
    );
  }
}