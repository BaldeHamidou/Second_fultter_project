import 'dart:math';
import 'package:flutter/material.dart';

//void main() => runApp(RandomColorListview2());

class RandomColorListview2 extends StatefulWidget {
  RandomColorListview2({Key key}) : super(key: key);

  @override
  State<RandomColorListview2> createState() => _RandomColorListview2State();
}

class _RandomColorListview2State extends State<RandomColorListview2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tritre page')),
      body: ListView(children: [
        for (var i = 0; i < 30; i++)
          LimitedBox(
            maxHeight: 200,
            child: Container(
              color: Color(Random().nextInt(0xffffffff)),
            ),
          ),
      ]),
    );
    /*
    return ListView(
      children: [
        for (var i = 0; i < 30; i++)
          LimitedBox(
            maxHeight: 200,
            child: Container(
              color: Color(Random().nextInt(0xffffffff)),
            ),
          ),
      ],
    );*/
  }
}
