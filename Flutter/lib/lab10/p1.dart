import 'package:flutter/material.dart';

class p1 extends StatefulWidget {
  const p1({super.key});
  @override
  State<p1> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<p1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('Music Player', style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Container(
          height: 195,
          width: double.infinity,
          child: Card(
            child: Padding(
              padding:  EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                       Icon(Icons.album, size: 75),
                       SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text('TheDevil', style: TextStyle(fontSize: 22)),
                           SizedBox(height: 4),
                          Text(
                            'Author -: Krish',
                            style: TextStyle(color: Colors.grey.shade600),
                          ),
                        ],
                      ),
                    ],
                  ),
                   SizedBox(height: 16),
                   LinearProgressIndicator(value: 0.7),
                   SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon:  Icon(Icons.skip_previous),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon:  Icon(Icons.play_arrow),
                        iconSize: 36,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon:    Icon(Icons.skip_next),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
