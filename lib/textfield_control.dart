import 'package:flutter/material.dart';

class TextFieldControl extends StatelessWidget {
  TextFieldControl(
      {Key? key,
      required this.textEditingController,
      required this.letterSize,
      required this.cursorColor,
      required this.obscureText,
      required this.hintText,
      required this.inputType,
      this.fillColor})
      : super(key: key);

  final TextEditingController textEditingController;
  final double letterSize;
  final Color cursorColor;
  final bool obscureText;
  final String hintText;
  final TextInputType inputType;
  final Color? fillColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding:const EdgeInsets.only(right: 25.0, left: 25.0, bottom: 0.0, top: 5.0),
      child: TextFormField(
        controller: textEditingController,
        obscureText: obscureText,
        textAlign: TextAlign.left,
        cursorColor: cursorColor,
        keyboardType: inputType,
        decoration: InputDecoration(
            errorStyle:
                TextStyle(fontSize: letterSize - 2, color: Colors.redAccent),
            hintText: hintText,
            counterText: "",
            hintStyle: const TextStyle(color: Colors.black, fontSize: 12.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4.0),
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            filled: true,
            contentPadding: EdgeInsets.all(12.0),
            fillColor: Colors.grey),
      ),
    );
  }
}
