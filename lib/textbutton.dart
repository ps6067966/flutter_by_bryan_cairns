import 'package:flutter/material.dart';

class CustomizedTextButton extends StatefulWidget {
  CustomizedTextButton({Key? key}) : super(key: key);

  @override
  _CustomizedTextButtonState createState() => _CustomizedTextButtonState();
}

class _CustomizedTextButtonState extends State<CustomizedTextButton> {
  String _value = 'Hello World';
  void _onPressed() {
    setState(() {
      _value = new DateTime.now().toString();
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
              onPressed: _onPressed,
              child: Text('Click me'),
            ),
            TextButton(
              onPressed: _onPressed,
              child: Text('Click me'),
            )
          ],
        ),
      ),
    );
  }
}
