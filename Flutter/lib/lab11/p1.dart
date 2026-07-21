// import 'package:flutter/material.dart';
//
// class p1 extends StatefulWidget {
//   const p1({super.key});
//   @override
//   State<p1> createState() => _ListViewDemoState();
// }
//
// class _ListViewDemoState extends State<p1> {
//   List<int> numbers = [
//     6697,
//     2203,
//     4574,
//     6158,
//     2509,
//     1795,
//     9998,
//     7984,
//     3416,
//     309,
//     1372,
//     4542,
//     7710,
//     3906,
//     3397,
//     4906,
//     9947,
//     5906,
//     7969,
//     496,
//     6515,
//     686,
//     1310,
//     7334,
//     5207,
//     7731,
//     6385,
//     9391,
//     6964,
//     9274,
//     1538,
//     924,
//     9836,
//     9815,
//     6477,
//     5045,
//     6899,
//     6280,
//     4966,
//     3531,
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: Colors.black,
//         title: Text('List View', style: TextStyle(color: Colors.white)),
//       ),
//       body: ListView(
//         children: numbers.map((number) {
//           return ListTile(title: Text(number.toString()));
//         }).toList(),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';

class p1 extends StatelessWidget {
   p1({super.key});
List<int> number = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Demo"),
        centerTitle: true,
      ),
      body: Expanded(
          child: ListView(
        children:number.map((e) {
          return ListTile(
            leading: Icon(Icons.fiber_manual_record),
            title: Text("Number: "+e.toString()),
          );
        },).toList(),
      )),
    );
  }
}
