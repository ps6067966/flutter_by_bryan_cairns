import 'package:flutter/material.dart';

class CustomizedElevatedButtonWithParameters extends StatefulWidget {
  CustomizedElevatedButtonWithParameters({Key? key}) : super(key: key);

  @override
  _CustomizedElevatedButtonWithParametersState createState() =>
      _CustomizedElevatedButtonWithParametersState();
}

class _CustomizedElevatedButtonWithParametersState
    extends State<CustomizedElevatedButtonWithParameters> {
  String _value = 'Hello World';
  void _onPressed(String value) {
    setState(() {
      _value = value;
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
              onPressed: () => _onPressed,
              child: Text('Click me'),
            )
          ],
        ),
      ),
    );
  }
}
