import 'package:flutter/material.dart';
class p2 extends StatelessWidget {
  const p2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            "Stack Example",
            style: TextStyle(color: Colors.white),
          )),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
              child: Image.network(
                  "https://static0.srcdn.com/wordpress/wp-content/uploads/2017/01/Iron-Man-Flying.jpg?w=1200&h=675&fit=crop",
                  fit: BoxFit.cover)),
          const Padding(
            padding: EdgeInsets.only(top:30,left:0),
            child: Center(child: Text("abc",style: TextStyle(fontSize: 70,color: Colors.blueAccent,),)),

          ),
        ],
      ),
    );
  }
}
