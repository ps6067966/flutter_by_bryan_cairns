import 'package:flutter/material.dart';

class CustomizedRadioButton extends StatefulWidget {
  CustomizedRadioButton({Key? key}) : super(key: key);

  @override
  _CustomizedRadioButtonState createState() => _CustomizedRadioButtonState();
}

class _CustomizedRadioButtonState extends State<CustomizedRadioButton> {
  int? _value1 = 0;
  int? _value2 = 0;

  void _setValue1(int? value) {
    setState(() {
      _value1 = value;
    });
  }

  void _setValue2(int? value) {
    setState(() {
      _value2 = value;
    });
  }

  Widget makeRadios() {
    List<Widget> list = [];

    for (int i = 0; i < 3; i++) {
      list.add(Radio<int?>(
        value: _value1,
        groupValue: _value1,
        onChanged: _setValue1,
      ));
    }
    Column column = Column(
      children: list,
    );
    return column;
  }

  Widget makeRadioTiles() {
    List<Widget> list = [];

    for (int i = 0; i < 3; i++) {
      list.add(RadioListTile<int?>(
        value: _value2,
        groupValue: _value2,
        onChanged: _setValue2,
        activeColor: Colors.green,
        controlAffinity: ListTileControlAffinity.trailing,
        title: Text('Item $i'),
        subtitle: Text('sub title'),
      ));
    }
    Column column = Column(
      children: list,
    );
    return column;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          makeRadios(),
        ],
      ),
    );
  }
}
