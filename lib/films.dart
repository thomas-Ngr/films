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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Films'),
      ),
      drawer: CustomDrawer(),
      body: test(),
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

  columnGenres(films,index) {
      List<Widget> genresList = [];
      for ( int i = 0; i < films[index]['genres'].length && i < 3; i++) {
        genresList.add(Text(films[index]['genres'][i]));
      }
      return genresList;
    }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .889,
          width: MediaQuery.of(context).size.width * 1,
          child: Align(
            alignment: Alignment.centerLeft,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: films.length,
              itemBuilder: (context, index) {
                return Container(
                    child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: OutlinedButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(25.0))),
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.transparent)),
                              onPressed: () {
                                setState(() {selectedFilm = index;});
                                Navigator.pushNamed(context, 'detail');
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: MediaQuery.of(context).size.height * 0.65,
                                      width: MediaQuery.of(context).size.width * 0.7,
                                      child: Image(
                                        image: NetworkImage(films[index]['posterLink']),
                                      ),
                                    ),
                                    Text(
                                      films[index]['title'],
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Text(
                                      "année de sortie : ${films[index]['year']}",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Text(
                                      "genre : ${films[index]['genres'][0]}",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ],
                                ),
                              )
                          ),
                        ),
                      );
              },
            ),
          ),
        ),
      ],
    );
  }
}
