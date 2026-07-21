import 'package:flutter/material.dart';

class p2 extends StatefulWidget {
  const p2({super.key});

  @override
  State<p2> createState() => _p2State();
}

class _p2State extends State<p2> {
  List<int> number = List.generate(20, (index) => (index * 10),);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List view Builder"),
        centerTitle: true,
      ),
      body: Expanded(
          child: ListView.builder(
            itemCount: number.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  child: Text((index + 1).toString()), 
                ),
                title: Text("Number: ${number[index]}"),
              );
          },)
      ),
    );
  }
}
