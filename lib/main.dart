import 'package:flutter/material.dart';
//import 'infos.dart';
//import 'routes.dart';
import 'films.dart';
import 'user.dart';
import 'detail.dart';
//import 'drawer.dart';

/*
 * ROUTES
 */


final pageRoutes = {
  'films': (context) => PageFilms(),
  'detail': (context) => PageDetail(),
  'user': (context) => PageUser(),
};

/*
 * STATE
 */

//int selectedFilm = 0;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: pageRoutes,
      initialRoute: 'films',
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}