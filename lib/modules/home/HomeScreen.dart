import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  List<int> i = [
    2,
    3,
    4,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: Icon(
          Icons.menu,
        ),
        title: Text('First app'),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: onSearch),
          // IconButton(
          //     icon: Icon(Icons.ac_unit),
          //     onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          Text(
            'hello',
            style:TextStyle(
              color: Colors.red,
              fontSize: 30,
              backgroundColor: Colors.blue,

            ),
          ),
          Text('hello'),
        ],
      ),
    );
  }
}

void onSearch() {
  print('The button is pressed');
}