import 'package:flutter/material.dart';
import 'package:flutter_second_app/ui/accountpage.dart';
import 'package:flutter_second_app/ui/drawer_menu.dart';
import 'package:flutter_second_app/ui/mainpage.dart';
import 'package:flutter_second_app/ui/searchpage.dart';
import 'package:flutter_second_app/ui/page_view.dart';
import 'package:flutter_second_app/ui/tabs.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int secilenMenuItem = 0;

  List<Widget> allPages;
  MainPage pageMain;
  SearchPage pageSearch;
  //AccountPage pageAccount;
  //PageViewOrnek pageViewExample;

  var keyMainPage = PageStorageKey("key_main_page");
  var keySearchPage = PageStorageKey("key_search_page");
  //var keyAccountPage = PageStorageKey("key_account_page");

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageMain = MainPage(keyMainPage);
    pageSearch = SearchPage(keySearchPage);
    //pageAccount = AccountPage(keyAccountPage);
    //pageViewExample = PageViewOrnek();
    allPages = [pageMain, pageSearch, ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(title: Text('Flutter Dersleri Bolum 2')),
      body: secilenMenuItem <= allPages.length-1 ? allPages[secilenMenuItem] : allPages[0],
      //fixed ve shifting olaylarina iyi bak guzel bir seye benziyor
      bottomNavigationBar: bottomNavMenu(),
    );
  }

  Theme bottomNavMenu() {
    return Theme(
      data: ThemeData(canvasColor: Colors.blueGrey, primaryColor: Colors.amber),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Anasayfa"),
              backgroundColor: Colors.lightGreen),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text("Arama"),
              backgroundColor: Colors.lightGreen),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded),
              activeIcon: Icon(Icons.agriculture_rounded),
              title: Text("Profil"),
              backgroundColor: Colors.lightGreen),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: secilenMenuItem,
        //primaryColor yoksa buradan tiklandiginda rengini degistirebilirsin.
        //fixedColor: Colors.lime,
        onTap: (index) {
          setState(() {
            secilenMenuItem = index;
            if (index == 2) {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => TabOrnek()))
                  .then((bb) {
                secilenMenuItem = 0;
              });
            }
          });
        },
      ),
    );
  }
}
