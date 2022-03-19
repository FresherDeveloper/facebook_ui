import 'package:flutter/material.dart';

class BlueCheck extends StatelessWidget {
  const BlueCheck({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15,
      height: 15,
      child: Icon(
        Icons.check,
        size: 10,
        color: Colors.white,
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue[700],
      ),
    );
  }
}
