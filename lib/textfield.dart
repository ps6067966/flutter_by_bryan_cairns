import 'package:flutter/material.dart';

class CustomizedTextField extends StatefulWidget {
  CustomizedTextField({Key? key}) : super(key: key);

  @override
  _CustomizedTextFieldState createState() => _CustomizedTextFieldState();
}

class _CustomizedTextFieldState extends State<CustomizedTextField> {
  String _value = '';
  void _onChange(String value) {
    setState(() {
      _value = 'Change: $value';
    });
  }

  void _onSubmit(String value) {
    setState(() {
      _value = 'Submit: $value';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text(_value),
            // You can also use TextEditingController
            TextField(
              decoration: InputDecoration(
                labelText: 'Hello',
                hintText: 'Hint',
                icon: Icon(Icons.people),
              ),
              autocorrect: true,
              autofocus: true,
              keyboardType: TextInputType.text,
              onChanged: _onChange,
              onSubmitted: _onSubmit,
            )
          ],
        ),
      ),
    );
  }
}
