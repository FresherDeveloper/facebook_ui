import 'dart:ui';

import 'package:facebook_ui/icons.dart';
import 'package:facebook_ui/sections/labelledButtonRow.dart';
import 'package:facebook_ui/sections/peopleKnow.dart';
import 'package:facebook_ui/sections/post.dart';
import 'package:facebook_ui/sections/storySection.dart';
import 'package:facebook_ui/sections/topIconsRow.dart';

import 'package:facebook_ui/widgets/appBarButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/profilePic.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue[700],
              fontWeight: FontWeight.bold,
              fontSize: 35,
            ),
          ),
          actions: [
            AppBarButton(
              appIcon: Icons.search,
              appFunction: () {
                print("Search anything");
              },
            ),
            AppBarButton(
              appIcon: MyFlutterApp.messenger_svgrepo_com,
              appFunction: () {
                print("Keep Chatting");
              },
            ),
          ],
          elevation: 0,
          bottom: PreferredSize(
            child: TopIconRow(),
            preferredSize: Size.fromHeight(50),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                leading: ProfilePic(
                  profileimg: "images/profileimage/img1.jpg",
                  displayBorder: false,
                ),
                title: TextField(
                  decoration: InputDecoration(
                    hintText: "Write something here...",
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
                trailing: Icon(Icons.camera_roll_outlined, color: Colors.green),
              ),
              LabelledButtonRow(),
              thickDivider(),
              StorySection1(),
              thickDivider(),
              Post(
                profileName: "Gowri",
                postProfilePic: "images/profileimage/img3.jpg",
                publishtime: "6h",
                postText: "Hello Eveyone",
                postImage: "images/wallpapers/wal7.jpg",
                showBlueTick: true,
                likeCount: "15k",
                commentCount: "10",
                shareCount: "30",
              ),
              thickDivider(),
              PeopleKnow(),
              thickDivider(),
              Post(
                profileName: "MadhuPal",
                postProfilePic: "images/profileimage/img5.jpg",
                publishtime: "6d",
                postText: "Hi Friends",
                postImage: "images/wallpapers/wal1.jpg",
                showBlueTick: true,
                likeCount: "1k",
                commentCount: "16",
                shareCount: "40",
              ),
              thickDivider(),
              Post(
                profileName: "Dileep",
                postProfilePic: "images/profileimage/img8.jpg",
                publishtime: "10 days ago",
                postText:
                    "Kerala actress abduction case: High Court refuses to stay Crime Branch probe against Dileep",
                postImage: "",
                showBlueTick: true,
                likeCount: "20k",
                commentCount: "16",
                shareCount: "50",
              ),
              thickDivider(),
              Post(
                profileName: "Nazriya",
                postProfilePic: "images/profileimage/img11.jpg",
                publishtime: "2 days ago",
                postText:
                    "Nazriya Nazim (born 20 December 1994) is an Indian actress and producer who works predominantly in Malayalam and Tamil films.She started her career as an anchor on Malayalam television channel Asianet before pursuing a career as an actress. She made her debut as a child artist with Palunku (2006) and then as a lead actress in the 2013 Malayalam film Maad Dad. She has gone on to star in successful films such as Neram (2013), Raja Rani (2013), Ohm Shanthi Oshaana (2014), and Bangalore Days (2014).",
                postImage: "",
                showBlueTick: true,
                likeCount: "20k",
                commentCount: "16",
                shareCount: "50",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Divider thickDivider() {
    return Divider(
      thickness: 15,
      color: Colors.grey,
    );
  }
}
