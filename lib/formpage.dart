import 'package:day/textfield_control.dart';
import 'package:day/checkbox_controller.dart';
import 'package:day/datetime.dart';

import 'package:day/radio_button.dart';
import 'package:day/svg_image.dart';
import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController age = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.red,
          title: const Text(
            "Form",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const ImageView(),
              Padding(
                padding: const EdgeInsets.only(
                    left: 5.0, right: 5.0, top: 40.0, bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "FirstName:",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 5.0),
                        child: TextFieldControl(
                            textEditingController: firstname,
                            letterSize: 12.0,
                            cursorColor: Colors.black,
                            obscureText: false,
                            hintText: "FirstName",
                            inputType: TextInputType.text),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 5.0, right: 5.0, top: 10.0, bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "LastName:",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 5.0),
                        child: TextFieldControl(
                            textEditingController: lastname,
                            letterSize: 12.0,
                            cursorColor: Colors.black,
                            obscureText: false,
                            hintText: "LastName",
                            inputType: TextInputType.text),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 5.0, right: 5.0, top: 10.0, bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Flexible(
                      flex: 1,
                      child: Text(
                        "Age:",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 75.0, right: 5.0),
                        child: TextFieldControl(
                            textEditingController: age,
                            letterSize: 12.0,
                            cursorColor: Colors.black,
                            obscureText: false,
                            hintText: "Enter Age",
                            inputType: TextInputType.number),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 5.0, right: 5.0, top: 10.0, bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      "Date:",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 65.0, right: 5.0),
                        child: DateController(),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: const [
                  Text(
                    "Languages:",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  CheckBoxController(),
                ],
              ),
              RadioButton(),
            ],
          ),
        ),
      ),
    );
  }
}
