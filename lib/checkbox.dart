import 'package:flutter/material.dart';

class CustomizedCheckBox extends StatefulWidget {
  CustomizedCheckBox({Key? key}) : super(key: key);

  @override
  _CustomizedCheckBoxState createState() => _CustomizedCheckBoxState();
}

class _CustomizedCheckBoxState extends State<CustomizedCheckBox> {
  bool? _value1 = false;
  bool? _value2 = false;

  void _value1Changed(bool? value) {
    setState(() {
      _value1 = value;
    });
  }

  void _value2Changed(bool? value) {
    setState(() {
      _value2 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Checkbox(
              value: _value1,
              onChanged: _value1Changed,
            ),
            CheckboxListTile(
              value: _value2,
              onChanged: _value2Changed,
              title: Text('Hello World'),
              controlAffinity: ListTileControlAffinity.leading,
              subtitle: Text('SubTitle'),
              secondary: Icon(Icons.archive),
              activeColor: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
