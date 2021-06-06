import 'package:flutter/material.dart';

class CustomizedElevatedButton extends StatefulWidget {
  CustomizedElevatedButton({Key? key}) : super(key: key);

  @override
  _CustomizedElevatedButtonState createState() =>
      _CustomizedElevatedButtonState();
}

class _CustomizedElevatedButtonState extends State<CustomizedElevatedButton> {
  String _value = 'Hello World';
  void _onClick() {
    setState(() {
      _value = 'My Name is Pratap Singh';
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text(_value),
            ElevatedButton(
              onPressed: _onClick,
              child: Text('Click me'),
            ),
          ],
        ),
      ),
    );
  }
}
