import 'package:day/drawer_menu.dart';
import 'package:day/http.dart';
import 'package:day/singleuserscreen.dart';
import 'package:day/postrequest.dart';
import 'package:day/tab_home.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text(
                "TabViewFlutter",
              ),
              centerTitle: true,
              bottom: const TabBar(
                isScrollable: false,
                tabs: [
                  Tab(
                    text: "Home",
                    icon: Icon(Icons.home),
                  ),
                  Tab(
                    text: "Star",
                    icon: Icon(Icons.star),
                  ),
                  Tab(
                    text: "Person",
                    icon: Icon(
                      Icons.person,
                    ),
                  ),
                  Tab(
                    text: "Car",
                    icon: Icon(Icons.car_rental),
                  ),
                ],
              ),
            ),
            drawer: const DrawerMenu(),
            body: const TabBarView(
              children: [
                TabHome(),
                DataFromApi(),
                PostRequest(),
                SingleUserScreen(),
              ],
            )),
      ),
    );
  }
}
