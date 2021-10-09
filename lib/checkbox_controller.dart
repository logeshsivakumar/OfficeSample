import 'package:flutter/material.dart';

class CheckBoxController extends StatefulWidget {
  const CheckBoxController({Key? key}) : super(key: key);

  @override
  _CheckBoxControllerState createState() => _CheckBoxControllerState();
}

class _CheckBoxControllerState extends State<CheckBoxController> {
  bool tamil = false;
  bool hindi = false;
  bool malayalam = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Checkbox(
                  value: tamil,
                  onChanged: (isSelected) {
                    setState(() {
                      tamil = isSelected!;
                    });
                  }),
              const Text(
                "Tamil",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            children: [
              Checkbox(
                  value: hindi,
                  onChanged: (isSelected) {
                    setState(() {
                      hindi = isSelected!;
                    });
                  }),
              const Text(
                "Hindi",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            children: [
              Checkbox(
                  value: malayalam,
                  onChanged: (isSelected) {
                    setState(() {
                      malayalam = isSelected!;
                    });
                  }),
              const Text(
                "Malayalam",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
