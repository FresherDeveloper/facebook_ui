import 'package:flutter/material.dart';

class FirstStoryCard extends StatelessWidget {
  final String labelText;
  final String image;

  FirstStoryCard({
    required this.labelText,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 200,
      padding: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[300],
      ),
      child: Stack(
        children: [
          Container(
            width: 150,
            height: 100,
            child: Image(
              image: AssetImage(
                image,
              ),
              fit: BoxFit.fitWidth,
            ),
          ),
          Center(
            child: CircleAvatar(
              child: Icon(Icons.add),
            ),
          ),
          Positioned(
            left: 25,
            bottom: 10,
            child: Text(
              labelText,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
