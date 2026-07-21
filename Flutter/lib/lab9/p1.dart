import 'package:flutter/material.dart';

class p1 extends StatefulWidget {
  const p1({super.key});

  @override
  State<p1> createState() => _p1State();
}

class _p1State extends State<p1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Feedback Form"),
        backgroundColor: Colors.grey,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("How did You feel after using the product ?",
            style: TextStyle(fontSize: 20
                ,fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: (){},
                  icon:Icon(Icons.sentiment_satisfied,
                    color: Colors.green
                    ,size: 30,),
                style: IconButton.styleFrom(
                  backgroundColor: Colors.grey,
                  shape: CircleBorder()
                ),

              ),

              IconButton(onPressed: (){},
                icon:Icon(Icons.sentiment_neutral,
                  color: Colors.yellow
                  ,size: 30,),
                style: IconButton.styleFrom(
                    backgroundColor: Colors.grey,
                    shape: CircleBorder()
                ),

              ),

              IconButton(onPressed: (){},
                icon:Icon(Icons.sentiment_dissatisfied,
                  color: Colors.red
                  ,size: 30,),
                style: IconButton.styleFrom(
                    backgroundColor: Colors.grey,
                    shape: CircleBorder()
                ),

              ),
            ],
          ),
          SizedBox(height: 10,),
          Text("Who would you rate this product out of 9",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
            SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              button(button_text: "1"),
              button(button_text: "2"),
              button(button_text: "3"),
              button(button_text: "4"),
              button(button_text: "5"),

            ],

          ),
          SizedBox(height: 10,),
          Text("Your Feedback",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),),
          SizedBox(height: 10,),
          TextField(
            maxLines: 5,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter Your Feedback"
            ),
          ),
          SizedBox(height: 10,),
          Center(
            child: ElevatedButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Your feedback form has been submited")));
            }, child:Text("Submit")),
          )

            ],
      ),
    );
  }
}


Widget button ({required String button_text})
{
  return ElevatedButton(onPressed: (){}, 
      child:Text(button_text,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,)),
    style: ElevatedButton.styleFrom(
      shape: CircleBorder(),
  ),
  );

}
