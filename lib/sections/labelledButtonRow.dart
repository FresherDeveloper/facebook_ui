import 'package:flutter/material.dart';

class LabelledButtonRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: EdgeInsets.only(left: 15, right: 15),
      color: Colors.grey[300],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          labeledIconButton(
            icons: Icons.video_call,
            iconColor: Colors.pink,
            labelName: "Reels",
            iconFunction: () {
              print("Create reels");
            },
          ),
          labeledIconButton(
            icons: Icons.room,
            iconColor: Colors.purple,
            labelName: "Rooms",
            iconFunction: () {
              print("Create video rooms");
            },
          ),
          labeledIconButton(
            icons: Icons.group,
            labelName: "Group",
            iconColor: Colors.blue.shade700,
            iconFunction: () {
              print("Post to a Group");
            },
          ),
          labeledIconButton(
            icons: Icons.live_tv,
            labelName: "Live",
            iconColor: Colors.red,
            iconFunction: () {
              print("Create video rooms");
            },
          ),
        ],
      ),
    );
  }

  OutlinedButton labeledIconButton({
    required IconData icons,
    required final Color iconColor,
    required final void Function() iconFunction,
    required final String labelName,
  }) {
    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.all(10),
        shape: StadiumBorder(),
      ),
      onPressed: iconFunction,
      icon: Icon(
        icons,
        color: iconColor,
      ),
      label: Text(
        labelName,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
