import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({Key? key}) : super(key: key);

  @override
  _RbuttonState createState() => _RbuttonState();
}

class _RbuttonState extends State<RadioButton> {
  int selectedRadio = 0;

  // @override

  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.only(top: 12.0, left: 9.0),
            child: const Text(
              "Gender:",
              // ignore: prefer_const_constructors
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  Radio(
                      value: 1,
                      groupValue: selectedRadio,
                      activeColor: Colors.red,
                      onChanged: (des) {
                        setState(() {
                          selectedRadio = 1;
                        });
                      }),
                  const Text(
                    "Male",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 11.0,
                    ),
                    child: Radio(
                        value: 2,
                        groupValue: selectedRadio,
                        activeColor: Colors.red,
                        onChanged: (des) {
                          setState(() {
                            selectedRadio = 2;
                          });
                        }),
                  ),
                  const Text(
                    "Female",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
