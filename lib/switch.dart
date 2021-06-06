import 'package:flutter/material.dart';

class CustomizedSwitch extends StatefulWidget {
  CustomizedSwitch({Key? key}) : super(key: key);

  @override
  _CustomizedSwitchState createState() => _CustomizedSwitchState();
}

class _CustomizedSwitchState extends State<CustomizedSwitch> {
  bool _value1 = false;
  bool _value2 = false;

  void _onChanged1(bool value) {
    setState(() {
      _value1 = value;
    });
  }

  void _onChanged2(bool value) {
    setState(() {
      _value2 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Switch(
            value: _value1,
            onChanged: _onChanged1,
          ),
          SwitchListTile(
            value: _value2,
            onChanged: _onChanged2,
            title: Text(
              'Hello World',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          )
        ],
      ),
    );
  }
}
