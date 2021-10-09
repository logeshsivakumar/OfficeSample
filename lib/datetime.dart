import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateController extends StatefulWidget {
  const DateController({Key? key}) : super(key: key);

  @override
  _DateTimeState createState() => _DateTimeState();
}

class _DateTimeState extends State<DateController> {
  DateTime now = DateTime.now();
  // String formattedDate = DateFormat('dd-MM-yyyy – kk:mm').format(now);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              now == null
                  ? "Date not selected"
                  : DateFormat('dd/MM/yyyy').format(now),
              style: const TextStyle(
                fontSize: 22.0,
              ),
            ),
            IconButton(
                onPressed: () {
                  showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2001),
                          lastDate: DateTime(2022))
                      .then((date) {
                    setState(() {
                      now = date!;
                    });
                  });
                },
                icon: const Icon(Icons.calendar_today))
          ],
        ),
      ),
    );
  }
}
