import 'package:flutter/material.dart';

class p1 extends StatefulWidget {
  const p1({super.key});

  @override
  State<p1> createState() => _p1State();
}

class _p1State extends State<p1> {
  TextEditingController _controller= TextEditingController(text: "0");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculator UI"),),
      body: Column(
        children: [
          TextField(readOnly: true, controller: _controller, maxLines: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              button(button_text: "AC" , button_color: Colors.grey),
              button(button_text: "/" , button_color: Colors.grey),
              button(button_text: "*" , button_color: Colors.grey),
              button(button_text: "-" , button_color: Colors.grey),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              button(button_text: "7" ),
              button(button_text: "8" ),
              button(button_text: "9" ),
              button(button_text: "*" , button_color: Colors.grey),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              button(button_text: "4" ),
              button(button_text: "5" ),
              button(button_text: "6" ),
              button(button_text: "-" , button_color: Colors.grey),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              button(button_text: "1" ),
              button(button_text: "2" ),
              button(button_text: "3" ),
              button(button_text: "+" , button_color: Colors.grey),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              button(button_text: "+/-" ),
              button(button_text: "0" ),
              button(button_text: "." ),
              button(button_text: "=" , button_color: Colors.grey),
            ],
          ),

        ],
      ),
    );
  }
}


Widget button({
  required String button_text,
  Color button_color = Colors.white,
})
{
  return  SizedBox(
    height: 70,
    width: 70,
    child: ElevatedButton(onPressed: (){}, child: Text(button_text),
    style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(),
    backgroundColor: button_color,
    ),),
  );
}