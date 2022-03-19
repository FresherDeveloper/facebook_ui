import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  final IconData appIcon;
  final Function() appFunction;
  AppBarButton({
    required this.appIcon,
    required this.appFunction,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
      ),
      child: Row(
        children: [
          IconButton(
              icon: Icon(
                appIcon,
                color: Colors.black,
                size: 25,
              ),
              onPressed: appFunction),
        ],
      ),
    );
  }
}
