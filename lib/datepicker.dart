import 'package:flutter/material.dart';

class CustomizedDatePicker extends StatefulWidget {
  CustomizedDatePicker({Key? key}) : super(key: key);

  @override
  _CustomizedDatePickerState createState() => _CustomizedDatePickerState();
}

class _CustomizedDatePickerState extends State<CustomizedDatePicker> {
  String _value = '';
  Future _selectDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2022),
    );
    if (picked != null)
      setState(() {
        _value = picked.toString();
      });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(_value),
          ElevatedButton(
            onPressed: _selectDate,
            child: Text('Click me'),
          )
        ],
      ),
    );
  }
}
