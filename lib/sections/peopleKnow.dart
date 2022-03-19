import 'package:facebook_ui/widgets/people.dart';
import 'package:flutter/material.dart';

class PeopleKnow extends StatelessWidget {
  const PeopleKnow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "People you may know,",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more,
                  color: Colors.grey[700],
                ),
              ),
            ],
          ),
          Container(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 5),
              children: [
                People(
                  peopleImg: "images/profileimage/img7.jpg",
                  peopleName: "Sharaf U Dheen",
                  profileImg: "images/profileimage/img2.jpg",
                  mutualFriendNum: 5,
                ),
                People(
                  peopleImg: "images/profileimage/img8.jpg",
                  peopleName: "Dileep",
                  profileImg: "images/profileimage/img3.jpg",
                  mutualFriendNum: 3,
                ),
                People(
                  peopleImg: "images/profileimage/img9.jpg",
                  peopleName: "Nishan",
                  profileImg: "images/profileimage/img4.jpg",
                  mutualFriendNum: 10,
                ),
                People(
                  peopleImg: "images/profileimage/img10.jpg",
                  peopleName: "Anushka",
                  profileImg: "images/profileimage/img5.jpg",
                  mutualFriendNum: 1,
                ),
                People(
                  peopleImg: "images/profileimage/img11.jpg",
                  peopleName: "Nazriya",
                  profileImg: "images/profileimage/img6.jpg",
                  mutualFriendNum: 2,
                ),
                People(
                  peopleImg: "images/profileimage/img12.jpg",
                  peopleName: "Praveena",
                  profileImg: "images/profileimage/img7.jpg",
                  mutualFriendNum: 4,
                ),
              ],
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "See all",
                  style: TextStyle(color: Colors.grey[700]),
                ),
                Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: Colors.grey[700],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
