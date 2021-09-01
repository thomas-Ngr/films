import 'package:flutter/material.dart';
// ignore: unused_import
//import 'drawer.dart';
import 'infos.dart';

// Map user
Map user = {
  'name': 'Mel Gibson',
  'mail': 'mel@gibson.com',
  'city': 'Peekskill, New York',
  'avatar': 'image',
  'favourite': [2, 5, 7],
};

class PageUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User'),
      ),
      body: Profile(),
    );
  }
}

class Profile extends StatefulWidget {
  const Profile({
    Key? key,
  }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  // generate user carousel
  generateUserCarousel(context, favourites) {
    List<Widget> posterCarousel = [];
    for (int i in favourites) {
      posterCarousel.add(
        Padding(
          padding: EdgeInsets.all(15),
          child: GestureDetector(
            onTap: () {
              setState(() {selectedFilm = i;});
              Navigator.pushNamed(context, 'detail');
            },
            child: Image.network(films[i]['posterLink'])
          )
        )
      );
    }
    return posterCarousel;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        child: Column(
          children: [
            /*
             * CARD
             */
            Material(
              elevation: 8,
              borderRadius: BorderRadius.circular(25),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                ),
                height: MediaQuery.of(context).size.height * .75,
                child: Column(
                  children: [
                    Stack(
                      children: [
                         /*
                          * BG image
                          */
                        Container(
                          height: MediaQuery.of(context).size.height * .15,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(25),
                                  ),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://images.omerlocdn.com/resize?url=https%3A%2F%2Fgcm-v2.omerlocdn.com%2Fproduction%2Fglobal%2Ffiles%2Fimage%2F9872a05d-e2cf-4126-849a-e084a416fc47.jpg&width=1024&type=webp'),
                                  fit: BoxFit.cover)),
                        ),
                         /*
                          * AVATAR
                          */
                        Padding(
                          padding: EdgeInsets.only(top: 80, left: 20),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 50,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://upload.wikimedia.org/wikipedia/commons/5/58/Mel_Gibson_Cannes_2016.jpg'),
                              radius: 45,
                            ),
                          ),
                        ),
                        /*
                          * USER INFO
                          */
                        Padding(
                            padding: EdgeInsets.only(top: 130, left: 120),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(user['name'],
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                Text(user['city'],
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold))
                              ],
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(Icons.email),
                        SizedBox(
                          width: 30,
                        ),
                        Text(user['mail'],
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    /*
                    * CAROUSEL
                    */
                    SingleChildScrollView(
                      child: SizedBox(
                        height: 300,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: generateUserCarousel(context, user['favourite']),
                        ),
                      ),
                    ),


                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}