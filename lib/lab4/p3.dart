import 'package:flutter/material.dart';
class p3 extends StatelessWidget {
  const p3({super.key});
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
            child: Column(
              children: [
                Expanded(child: Container(color: Colors.red,),),
                Expanded(child: Container(color: Colors.orangeAccent,),),
                Expanded(child: Container(color: Colors.black),)
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(child: Container(color: Colors.yellow,),),
                Expanded(child: Container(color: Colors.blue,),),
                Expanded(child: Container(color: Colors.white),)
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(child: Container(color: Colors.green,),),
                Expanded(child: Container(color: Colors.purple,),),
                Expanded(child: Container(color: Colors.brown),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}