import 'package:flutter/material.dart';

class PageViewOrnek extends StatefulWidget {
  @override
  _PageViewOrnekState createState() => _PageViewOrnekState();
}

class _PageViewOrnekState extends State<PageViewOrnek> {
  var myController =
      PageController(initialPage: 0, keepPage: true, viewportFraction: 1);
  bool yatayEksen = true;
  bool pageSnapping = true;
  bool pageReverse = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            scrollDirection:
                yatayEksen == true ? Axis.horizontal : Axis.vertical,
            reverse: pageReverse,
            controller: myController,
            pageSnapping: pageSnapping,
            onPageChanged: (index) {
              debugPrint("page change gelen index $index");
            },
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 50,
                color: Colors.blue,
                child: Center(
                  child: Column(
                    children: [
                      Text("Sayfa 0"),
                      RaisedButton(
                        onPressed: () {
                          //myController.jumpToPage(1);
                           myController.jumpTo(75);
                        },
                        child: Text("1. Sayfaya git"),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 50,
                color: Colors.lightGreen,
                child: Center(
                  child: Column(
                    children: [
                      Text("Sayfa 1"),
                      RaisedButton(
                        onPressed: () {
                          myController.jumpToPage(2);
                        },
                        child: Text("2. Sayfaya git"),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 50,
                color: Colors.amber,
                child: Center(
                  child: Column(
                    children: [
                      Text("Sayfa 2"),
                      RaisedButton(
                        onPressed: () {
                          myController.jumpToPage(0);
                        },
                        child: Text("0. Sayfaya git"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            height: 125,
            color: Colors.orangeAccent.shade100,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Row(
                    children: <Widget>[
                      Center(
                        child: Text("Yatay Eksende Calis"),
                      ),
                      Checkbox(
                        value: yatayEksen,
                        onChanged: (b) {
                          setState(() {
                            yatayEksen = b;
                          });
                        },
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Row(
                    children: <Widget>[
                      Center(
                        child: Text("PageSnapping"),
                      ),
                      Checkbox(
                        value: pageSnapping,
                        onChanged: (b) {
                          setState(() {
                            pageSnapping = b;
                          });
                        },
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Row(
                    children: <Widget>[
                      Center(
                        child: Text("Reverse"),
                      ),
                      Checkbox(
                        value: pageReverse,
                        onChanged: (b) {
                          setState(() {
                            pageReverse = b;
                          });
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
