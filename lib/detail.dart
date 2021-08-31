import 'package:flutter/material.dart';
//import 'drawer.dart';

class PageDetail extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
      ),
      //drawer: CustomDrawer(),
      body: Center(
        child: Container(height: 50, width: 50, color: Colors.green)
      )
    );
  }
}
