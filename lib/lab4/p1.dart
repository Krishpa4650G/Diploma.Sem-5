import 'package:flutter/material.dart';
class p1 extends StatelessWidget {
  const p1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text("Horizontal parts",style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(color: Colors.lightBlueAccent,),
          ),
          Expanded(
            child: Container(color: Colors.deepPurpleAccent,),
          ),
          Expanded(child: Container(color: Colors.pinkAccent),)
        ],
      ),
    );
  }
}