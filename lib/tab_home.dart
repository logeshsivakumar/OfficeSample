import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TabHome extends StatefulWidget {
  const TabHome({Key? key}) : super(key: key);

  @override
  _TabHomeState createState() => _TabHomeState();
}

class _TabHomeState extends State<TabHome> {
  GlobalKey cardViewKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: InkWell(
                onTap: () {
                  if (cardViewKey.currentContext != null) {
                    var height =
                        cardViewKey.currentContext!.size!.height.toString();
                    var width =
                        cardViewKey.currentContext!.size!.width.toString();
                    Fluttertoast.showToast(
                        toastLength: Toast.LENGTH_LONG,
                        msg: height + "    " + width,
                        fontSize: 30.0,
                        gravity: ToastGravity.CENTER,
                        backgroundColor: Colors.black,
                        textColor: Colors.red);
                  }
                },
                child: Card(
                  key: cardViewKey,
                  color: Colors.green,
                  child: Container(
                    height: 150,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
