import 'dart:io';

import 'package:flutter/material.dart';

class p3 extends StatelessWidget {
  const p3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        title: Text("Birthday Card"),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Card(
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            width: 300,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blueAccent,Colors.white],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisSize:MainAxisSize.min ,
              children: [
                Icon(Icons.cake_rounded,size: 50,color: Colors.pink,),
                SizedBox(height: 16),
                Text(
                  'Happy Birthday',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Wishing you a wonderfull day\nfull of joy happiness',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.pink,fontSize: 16),
                ),
                SizedBox(height: 16),
                Icon(Icons.cake_rounded,size: 35,color: Colors.pinkAccent),
                // Text('',style: TextStyle(fontSize: 60),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}