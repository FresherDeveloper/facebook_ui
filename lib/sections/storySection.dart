import 'package:facebook_ui/widgets/FirstStoryCard.dart';
import 'package:facebook_ui/widgets/storyCards.dart';
import 'package:flutter/material.dart';

class StorySection1 extends StatelessWidget {
  const StorySection1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              textButton(
                buttonName: "Stories",
                iconFunction: () {
                  print("show stories");
                },
                isSelected: true,
              ),
              SizedBox(
                width: 15,
              ),
              textButton(
                buttonName: "Reels",
                iconFunction: () {
                  print("Show Reels");
                },
              ),
              SizedBox(
                width: 15,
              ),
              textButton(
                buttonName: "Rooms",
                iconFunction: () {
                  print("Create Rooms");
                },
              ),
            ],
          ),
          StorySection2(),
        ],
      ),
    );
  }

  ElevatedButton textButton({
    required final String buttonName,
    required final void Function() iconFunction,
    bool isSelected = false,
  }) {
    return ElevatedButton(
      onPressed: iconFunction,
      child: Text(
        buttonName,
        style: TextStyle(color: Colors.black),
      ),
      style: ElevatedButton.styleFrom(
          primary: isSelected ? Colors.blue[200] : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          )),
    );
  }
}

class StorySection2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          FirstStoryCard(
            labelText: "Create Story",
            image: "images/profileimage/img1.jpg",
          ),
          StoryCard(
            storyProfileImage: "images/profileimage/img2.jpg",
            labelText: "Parukutty",
            image: "images/wallpapers/wal2.jpg",
          ),
          StoryCard(
            storyProfileImage: "images/profileimage/img3.jpg",
            labelText: "Gowri",
            image: "images/wallpapers/wal2.jpg",
          ),
          StoryCard(
            storyProfileImage: "images/profileimage/img4.jpg",
            labelText: "Swasthika",
            image: "images/wallpapers/wal3.jpg",
          ),
          StoryCard(
            storyProfileImage: "images/profileimage/img5.jpg",
            labelText: "MathuPal",
            image: "images/wallpapers/wal4.jpg",
          ),
          StoryCard(
            storyProfileImage: "images/profileimage/img6.jpg",
            labelText: "Bhavana",
            image: "images/wallpapers/wal5.jpg",
          ),
        ],
      ),
    );
  }
}
