import 'package:facebook_ui/widgets/profilePic.dart';
import 'package:flutter/material.dart';

import 'FirstStoryCard.dart';

class StoryCard extends StatelessWidget {
  final String labelText;
  final String image;
  final String storyProfileImage;
  final bool firstStoryCard;

  StoryCard({
    required this.labelText,
    required this.image,
    required this.storyProfileImage,
    this.firstStoryCard = false,
  });

  @override
  Widget build(BuildContext context) {
    return firstStoryCard
        ? FirstStoryCard(
            image: image,
            labelText: labelText,
          )
        : Container(
            width: 150,
            height: 200,
            margin: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: ExactAssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: ProfilePic(
                    profileimg: storyProfileImage,
                  ),
                ),
                Positioned(
                  left: 10,
                  bottom: 10,
                  child: Text(
                    labelText,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          );
  }
}
