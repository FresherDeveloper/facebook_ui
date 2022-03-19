import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  final bool displayBorder;
  final String profileimg;
  final double width;
  final double height;
  ProfilePic({
    required this.profileimg,
    this.displayBorder = true,
    this.width = 50,
    this.height = 50,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: displayBorder
            ? Border.all(
                color: Colors.blue.shade700,
                width: 3,
              )
            : Border(),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset(
          profileimg,
          fit: BoxFit.cover,
          height: height,
          width: width,
        ),
      ),
    );
  }
}
