import 'package:flutter/material.dart';
//import 'drawer.dart';
import 'infos.dart';

//int selectedFilm = 0;

class PageDetail extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      //drawer: CustomDrawer(),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.85,
          child: BodyDetail()
        ),
      ),
    );
  }
}

class BodyDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Map film = films[selectedFilm];
    print(films.length);

    columnActors(film) {
      List<Widget> actorsList = [];
      for ( int i = 0; i < film['actors'].length && i < 3; i++) {
        actorsList.add(Text(film['actors'][i]));
      }
      return actorsList;
    }

    columnGenres(film) {
      List<Widget> actorsList = [];
      for ( int i = 0; i < film['genres'].length && i < 3; i++) {
        actorsList.add(Text(film['genres'][i]));
      }
      return actorsList;
    }

    return Column(
      children: [
        SizedBox(height: 40),
        Text(
          film['title'],
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        SizedBox(height: 40),
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.3,
              child: Image.network(film['posterLink']),
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // année
                Row(children: [
                  Text('Année : ', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(film['year']),
                ],),
                SizedBox(width: 20),
                // acteurs
                Text('Acteurs : ', style: TextStyle(fontWeight: FontWeight.bold)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: columnActors(film),
                ),
                // genres
                Text('Genres : ', style: TextStyle(fontWeight: FontWeight.bold)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: columnGenres(film),
                )
            ],),
          ],
        ),
        SizedBox(height: 40),
        Text(film['description']),
      ]
    );
  }
}
