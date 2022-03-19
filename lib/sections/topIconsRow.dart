import 'package:flutter/material.dart';

class TopIconRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        topIcons(
          icons: Icons.home,
          iconFunction: () {
            print("open home screen");
          },
          isSelected: true,
        ),
        topIcons(
          icons: Icons.group_outlined,
          iconFunction: () {
            print("add friends");
          },
          isNotification: true,
          notificationNum: 10,
        ),
        topIcons(
          icons: Icons.tv,
          iconFunction: () {
            print("watch vedio");
          },
          isNotification: true,
          notificationNum: 6,
        ),
        topIcons(
          icons: Icons.notification_important_outlined,
          iconFunction: () {
            print("read notification");
          },
          isNotification: true,
          notificationNum: 16,
        ),
        topIcons(
          icons: Icons.menu_outlined,
          iconFunction: () {
            print("go to menu page");
          },
        ),
      ],
    );
  }

  Stack topIcons({
    required IconData icons,
    required final void Function() iconFunction,
    bool isSelected = false,
    bool isNotification = false,
    int notificationNum = 0,
  }) {
    return Stack(
      children: [
        IconButton(
          onPressed: iconFunction,
          icon: Icon(icons),
          iconSize: 30,
          color: isSelected ? Colors.blue[700] : Colors.grey[700],
          highlightColor: Colors.transparent,
        ),
        isNotification
            ? Positioned(
                top: 10,
                right: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 2,
                  ),
                  //width: 20,
                  //height: 20,
                  // decoration: ShapeDecoration(
                  //   shape: StadiumBorder(),
                  //   color: Colors.red,
                  // ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ),
                  child: Center(
                    child: Text(
                      "$notificationNum",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            : SizedBox(),
      ],
    );
  }
}
