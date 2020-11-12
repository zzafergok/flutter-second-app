import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("ZaferGok"),
            accountEmail: Text("zafergok@gmail.com"),
            currentAccountPicture: Image.network(
                "https://avatars2.githubusercontent.com/u/41114328?s=460&u=3d21122805df0ea95647582dcb299c7c7437949d&v=4"),
            otherAccountsPictures: [
              /**
               * Image.network(
                  "https://avatars2.githubusercontent.com/u/41114328?s=460&u=3d21122805df0ea95647582dcb299c7c7437949d&v=4"),
                  Image.network(
                  "https://avatars2.githubusercontent.com/u/41114328?s=460&u=3d21122805df0ea95647582dcb299c7c7437949d&v=4"),
               */
              CircleAvatar(
                backgroundColor: Colors.lightGreen,
                child: Text(
                  "AS",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.redAccent,
                child: Text(
                  "OA",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
           Expanded(
              child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Ana Sayfa"),
                trailing: Icon(Icons.chevron_right),
              ),
              ListTile(
                leading: Icon(Icons.account_circle_rounded),
                title: Text("Profil"),
                trailing: Icon(Icons.chevron_right),
              ),
              ListTile(
                leading: Icon(Icons.search),
                title: Text("Ara"),
                trailing: Icon(Icons.chevron_right),
              ),
              Divider(),
              InkWell(
                onTap: () {},
                splashColor: Colors.cyan,
                child: ListTile(
                  leading: Icon(Icons.search),
                  title: Text("Ara"),
                  trailing: Icon(Icons.chevron_right),
                ),
              ),
              AboutListTile(
                applicationName: "Birlikte Ogrenelim",
                applicationIcon: Icon(Icons.save),
                applicationVersion: "1.2",
                child: Text("About Us"),
                applicationLegalese: null,
                icon: Icon(Icons.keyboard),
                aboutBoxChildren: [
                  Text("Child 1"),
                  Text("Child 2 "),
                  Text("Child 3"),
                ],
              ),
            ],
          ))
        ],
      ),
    );
  }
}
