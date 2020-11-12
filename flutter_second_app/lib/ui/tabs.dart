import 'package:flutter/material.dart';

class TabOrnek extends StatefulWidget {
  @override
  _TabOrnekState createState() => _TabOrnekState();
}

class _TabOrnekState extends State<TabOrnek>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tab Example"),
        bottom: myTabBar(),
      ),
      bottomNavigationBar: myTabBarr(),
      body: TabBarView(
        controller: tabController,
        children: <Widget>[
          Container(
            color: Colors.amber.shade500,
            child: Center(child: Text("Tab 1", style: TextStyle(fontSize: 36),)),
          ),
          Container(
            color: Colors.blueGrey.shade200,
            child: Center(child: Text("Tab 2", style: TextStyle(fontSize: 36),)),
          ),
          Container(
            color: Colors.green.shade300,
            child: Center(child: Text("Tab 3", style: TextStyle(fontSize: 36),)),
          )
        ],
      ),
    );
  }

  TabBar myTabBar() {
    return TabBar(
        controller: tabController,
        tabs: [
          Tab(
            icon: Icon(Icons.agriculture_rounded),
            text: "Tab1",
          ),
          Tab(
            icon: Icon(Icons.eco),
            text: "Tab2",
          ),
          Tab(
            icon: Icon(Icons.assignment_ind_outlined),
            text: "Tab3",
          ),
        ],
      );
  }
  Widget myTabBarr() {
    return Container(
      color: Colors.lightBlue ,
      child: TabBar(
        controller: tabController,
        tabs: [
          Tab(
            icon: Icon(Icons.agriculture_rounded),
            text: "Tab1",
          ),
          Tab(
            icon: Icon(Icons.eco),
            text: "Tab2",
          ),
          Tab(
            icon: Icon(Icons.assignment_ind_outlined),
            text: "Tab3",
          ),
        ],
      ),
    );
  }
}
