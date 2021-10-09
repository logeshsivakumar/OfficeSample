import 'package:flutter/material.dart';
import 'package:http/http.dart';

class PostRequest extends StatelessWidget {
  const PostRequest({Key? key}) : super(key: key);

  final Url = "https://reqres.in/api/users";

  void postData() async {
    final response = await post(Uri.parse(Url), body: {
      "first_name": "Ravi",
      "last_name": "Raj",
    });
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: postData, child: Text("SendPost")),
      ),
    );
  }
}
