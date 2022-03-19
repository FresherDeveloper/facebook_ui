import 'package:facebook_ui/widgets/profilePic.dart';
import 'package:flutter/material.dart';

class People extends StatelessWidget {
  final String peopleImg;
  final String profileImg;
  final int mutualFriendNum;
  final String peopleName;
  People(
      {required this.peopleImg,
      required this.profileImg,
      required this.mutualFriendNum,
      required this.peopleName,
      p});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 5,
        left: 5,
      ),
      padding: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade700),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 250,
            height: 200,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              child: Image.asset(
                peopleImg,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            peopleName,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              ProfilePic(
                profileimg: profileImg,
                displayBorder: false,
                width: 20,
                height: 20,
              ),
              Text(
                "$mutualFriendNum mutual friends",
                style: TextStyle(
                  color: Colors.grey[700],
                ),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                labelledButton(
                  buttonText: "Add Friend",
                  buttonColor: Colors.blue.shade700,
                  buttonTextColor: Colors.white,
                ),
                SizedBox(
                  width: 5,
                ),
                labelledButton(
                  isIconNeed: false,
                  buttonText: "Remove",
                  buttonColor: Colors.grey.shade300,
                  buttonTextColor: Colors.black,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget labelledButton({
    required String buttonText,
    required Color buttonColor,
    required Color buttonTextColor,
    bool isIconNeed = true,
  }) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: isIconNeed ? Icon(Icons.group_add_outlined) : SizedBox(),
      label: Text(buttonText),
      style: ElevatedButton.styleFrom(
        primary: buttonColor,
        onPrimary: buttonTextColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
