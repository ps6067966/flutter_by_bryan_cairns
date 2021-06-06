import 'package:flutter/material.dart';

class CustomizedSlider extends StatefulWidget {
  CustomizedSlider({Key? key}) : super(key: key);

  @override
  _CustomizedSliderState createState() => _CustomizedSliderState();
}

class _CustomizedSliderState extends State<CustomizedSlider> {
  double _value = 0.0;
  void _setValue(double value) {
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('${(_value * 100).round()}'),
          Slider(value: _value, onChanged: _setValue)
        ],
      ),
    );
  }
}
