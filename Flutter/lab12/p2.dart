import 'package:flutter/material.dart';

class p2 extends StatelessWidget {
  p2({super.key});

  List<Map> con = [
    {
      'name': 'Krish',
    },
    {
      'name': 'Radhey',
    },
    {
      'name': 'Rudra',
    },
    {
      'name': 'Jall',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LIst'),
      ),

      body: ListView.builder(
          itemCount: con.length,
          itemBuilder: (context, index){
            Map data = con[index];
            return Card(
              child: ListTile(
                title: Text(data['name']),
                trailing: Icon(Icons.call),
                leading: CircleAvatar(
                  child: Text(data['name'][0]),
                ),
              ),
            );
          }
      ),
    );
  }
}
