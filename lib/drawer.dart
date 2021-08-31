import 'package:flutter/material.dart';


class CustomDrawer extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue, 
            ),
            child: Text('Titre drawer'),
          ),
          ListTile(
            title: const Text('Films'),
            onTap: () {
              Navigator.pushReplacementNamed(context, 'films');
            },
          ),
          ListTile(
            title: const Text('User'),
            onTap: () {
              Navigator.pushNamed(context, 'user');
            },
          ),
        ],
      )

    );
  }
}