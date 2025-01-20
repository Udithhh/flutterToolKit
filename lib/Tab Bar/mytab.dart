import 'package:flutter/material.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar({super.key});

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[300],
          title: Text(
            "TAB BAR",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          bottom: TabBar(tabs: [
            Tab(
              // icon: Icon(Icons.home),
              text: "Home",
            ),
            Tab(
              // icon: Icon(Icons.search),
              text: "SEARCH",
            ),
            Tab(
              // icon: Icon(Icons.settings),
              text: "SETTINGS",
            )
          ]),
        ),
        body: TabBarView(children: [
          Center(
            child: Text("HOME SCREEN"),
          ),
          Center(
            child: Text("SEARCH SCREEN"),
          ),
          Center(
            child: Text("SETTINGS SCREEN"),
          )
        ]),
      ),
    );
  }
}
