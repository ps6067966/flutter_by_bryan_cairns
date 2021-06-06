import 'package:flutter/material.dart';

class CustomizedIconButton extends StatefulWidget {
  CustomizedIconButton({Key? key}) : super(key: key);

  @override
  _CustomizedIconButtonState createState() => _CustomizedIconButtonState();
}

class _CustomizedIconButtonState extends State<CustomizedIconButton> {
  int _value = 0;
  void _add() {
    setState(() {
      _value++;
    });
  }

  void _subtract() {
    setState(() {
      _value--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text('$_value'),
            IconButton(
              onPressed: _add,
              icon: Icon(Icons.add_box),
            ),
            IconButton(
              icon: Icon(Icons.remove),
              onPressed: _subtract,
            )
          ],
        ),
      ),
    );
  }
}
