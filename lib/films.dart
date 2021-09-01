import 'package:flutter/material.dart';
import 'drawer.dart';
import 'infos.dart';

class PageFilms extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _PageFilmsState createState() => _PageFilmsState();
}

class _PageFilmsState extends State<PageFilms> {
  int index = 0;
  int selectIndex = 0;

  chooseFilm(int index) {
    setState(() {
      selectIndex = index;
    });
    //List film = films[1];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Films'),
      ),
      drawer: CustomDrawer(),
      body: test(),
//      body: BodyFilms(),
    );
  }
}

class test extends StatefulWidget {
  const test({
    Key? key,
  }) : super(key: key);

  @override
  _testState createState() => _testState();
}

class _testState extends State<test> {
  int index = 0;
  int selectIndex = 0;

  chooseFilm(int index) {
    setState(() {
      selectIndex = index;
    });
  }
  columnGenres(films,index) {
      List<Widget> actorsList = [];
      for ( int i = 0; i < films[index]['genres'].length && i < 3; i++) {
        actorsList.add(Text(films[index]['genres'][i]));
      }
      return actorsList;
    }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 600,
          width: 500,
          child: Align(
            alignment: Alignment.centerLeft,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: films.length, //films.lengh
              itemBuilder: (context, index) {
                return Container(
                    child: OutlinedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0))),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.transparent)),
                        onPressed: () {
                          chooseFilm(index);
                          Navigator.pushNamed(context, 'detail');
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 400,
                                width: 400,
                                child: Image(
                                  image: NetworkImage(films[index]['posterLink']),
                                ),
                              ),
                              Text(
                                films[index]['title'],
                              ),
                              Text(
                                "année de sortie : ${films[index]['year']}"
                              ),
                              Text(
                                "genre : ${films[index]['genres'][0]}"
                              ),
                            ],
                          ),
                          /*Text(
                        "${films[index]['title']}"
                      ),*/
                        )));
              },
            ),
          ),
        ),
      ],
    );
  }
}
