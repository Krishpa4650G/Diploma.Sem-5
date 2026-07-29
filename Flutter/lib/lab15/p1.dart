import 'package:flutter/material.dart';
class p1 extends StatefulWidget {
  const p1({super.key});

  @override
  State<p1> createState() => _p1State();
}

class _p1State extends State<p1> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tab Bar Demo'),
            bottom: TabBar(
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(
                    child: Text('Home'),
                    icon: Icon(Icons.home),
                  ),
                  Tab(
                    child: Text('About'),
                    icon: Icon(Icons.info),
                  ),
                  Tab(
                    child: Text('Contact Us'),
                    icon: Icon(Icons.contact_page),
                  )
                ]
            ),
          ),
          body: TabBarView(children: [
            Container(
              child: Center(child: Text('Home page', style: TextStyle(fontSize: 30))),
            ),
            Container(
              child: Center(child: Text('About page', style: TextStyle(fontSize: 30))),
            ),
            Container(
              child: Center(child: Text('Contact Us page', style: TextStyle(fontSize: 30))),
            )
          ]),
        )
    );
  }
}
