import 'package:flutter/material.dart';
import 'drawer.dart';

class PageUser extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User'),
      ),
      // drawer commented to let Flutter automatically add "back" arrow.
      //drawer: CustomDrawer(),
      body: Center(
        child: Container(height: 50, width: 50, color: Colors.yellow)
      )
    );
  }
}