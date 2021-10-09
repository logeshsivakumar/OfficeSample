import 'dart:convert';

import 'package:day/datamodeldio.dart';
import 'package:day/httpservice.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class SingleUserScreen extends StatefulWidget {
  const SingleUserScreen({Key? key}) : super(key: key);

  @override
  _SingleUserScreenState createState() => _SingleUserScreenState();
}

class _SingleUserScreenState extends State<SingleUserScreen> {
  List<UserDetail> userLogin = <UserDetail>[];
  HttpService http = new HttpService();
  Future getUser() async {
    Response response = await http.getRequest();

    if (response.statusCode == 200) {
      var responseData = json.decode(response.data);
      List<dynamic> data = responseData["data"];
      for (var userDetail in data) {
        userLogin.add(UserDetail.fromJson(userDetail));
      }
    }
    return userLogin;
  }

  // void initState() {
  //   getUser().then((value) {
  //     // setState(() {
  //     //   userLogin.addAll(value);
  //     // });
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
      future: getUser(),
      builder: (context, snapshot) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userLogin[index].objectName,
                      style: const TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    Text(userLogin[index].objectId.toString()),
                  ],
                ),
              ),
            );
          },
          itemCount: userLogin.length,
        );
      },
    ));
  }
}
