import 'package:day/formpage.dart';
import 'package:day/homepage.dart';
import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20.0),
            color: Colors.red,
            child: Row(
              children: [
                Container(
                  width: 75.0,
                  height: 75.0,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("images/profie.jpg"),
                          fit: BoxFit.fill)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      Text(
                        "Micheal Raj",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Michealraj@gmail.com",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // ignore: prefer_const_constructors
          Expanded(
            child: Column(
              children: [
                Flexible(
                  flex: 8,
                  child: Column(
                    children: [
                      ExpansionTile(
                        // ignore: prefer_const_constructors
                        title: Text(
                          "Form",
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                        leading: const Icon(
                          Icons.person_add,
                        ),
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const FormPage()),
                              );
                            },
                            child: Container(
                              height: 30.0,
                              width: double.infinity,
                              child: const Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "Form1",
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 30.0,
                            width: double.infinity,
                            child: const Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Text("Form2",
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.left),
                            ),
                          )
                        ],
                      ),
                      const ExpansionTile(
                        title: Text(
                          "AddItems",
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                        leading: Icon(
                          Icons.add_chart_outlined,
                        ),
                      ),
                      const ExpansionTile(
                        title: Text(
                          "YourOrders",
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                        leading: Icon(
                          Icons.kitchen_outlined,
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: IconButton(
                          onPressed: () {
                            alertBox(context);
                          },
                          icon: const Icon(
                            Icons.logout_outlined,
                            size: 50.0,
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void alertBox(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("You want to logout?"),
            actions: [
              // ignore: deprecated_member_use
              FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyHomePage()),
                    );
                  },
                  child: const Text("No")),
              // ignore: deprecated_member_use
              FlatButton(onPressed: () {}, child: const Text("Yes"))
            ],
          );
        });
  }
}
