import 'package:flutter/material.dart';

class p1 extends StatelessWidget {
   p1({super.key});
List products = [
  {
    'name' : 'Shoes',
    'description' : 'Stlyes nike shoes',
    'image' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgXGPgTJ7kBhPA-MQwvcaOaotBKTmBvTaMr8hkgCIbIg&s=10'
  },
  {
    'name' : 'Ben 10',
    'description' : 'Omnitrix',
    'image' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-Yj650b7-F2bqfHaqMzzCGPw-1cWs6456lJmVMtfz5A&s'
  },
  {
    'name' : 'super speedo',
    'description' : 'keko and super speedo',
    'image' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgtgdW66cKrQpw9tClVgq7aIwmjYSfMjq-yyWQCglGGA&s=10'
  },
  {
    'name' : 'Raj Cartoon',
    'description' : 'Superpower in belt',
    'image' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS85L03QZazZI-IMmCTH_yoOd8Ht7yYswT-r3W1f4zU4Q&s=10'
  }
];
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("E-commerce UI"),),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
              var product = products [index];
              return Card(
                child: ListTile(
                  leading: CircleAvatar(backgroundImage: NetworkImage(product['image']),),
                  title: Text(products[index]['name']),
                  subtitle: Text(product['description']),
                  trailing: ElevatedButton(onPressed: (){}, child: Text("Details")),
                ),
              );
            },),
          )
        ],
      ),
    );
  }
}
