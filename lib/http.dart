// ignore_for_file: curly_braces_in_flow_control_structures
//
import 'dart:convert';

import 'package:day/datamodel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DataFromApi extends StatefulWidget {
  const DataFromApi({Key? key}) : super(key: key);

  @override
  _DataFromApiState createState() => _DataFromApiState();
}

class _DataFromApiState extends State<DataFromApi> {
  List<User> users = <User>[];

  Future getUserData() async {
    var response = await http.get(Uri.https("reqres.in", "api/users?2page=2"));
    List<User> users = [];
    if (response.statusCode == 200) {
      var responseData = json.decode(response.body);
      List<dynamic> data = responseData["data"];
      for (var userDetail in data) {
        users.add(User.fromJson(userDetail));
      }
    }
    return users;
  }

  void initState() {
    getUserData().then((value) {
      setState(() {
        users.addAll(value);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemBuilder: (context, index) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  users[index].name,
                  style: const TextStyle(
                      fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Text(users[index].year.toString()),
              ],
            ),
          ),
        );
      },
      itemCount: users.length,
    ));
  }
}
