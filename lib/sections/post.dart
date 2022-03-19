import 'package:facebook_ui/widgets/blueCheck.dart';
import 'package:facebook_ui/widgets/profilePic.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final String profileName;
  final String publishtime;
  final String postText;
  final String likeCount;
  final String commentCount;
  final String shareCount;
  final String postProfilePic;
  final String postImage;
  final bool showBlueTick;

  Post({
    required this.profileName,
    required this.publishtime,
    required this.likeCount,
    required this.commentCount,
    required this.shareCount,
    required this.postText,
    required this.postProfilePic,
    required this.postImage,
    this.showBlueTick = false,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postHeaderSection(),
          postTextSection(),
          postImageSection(),
          postFooterSection()
        ],
      ),
    );
  }

  Widget commentNum({required String commentText}) {
    return Text(
      commentText,
      style: TextStyle(
        color: Colors.grey[700],
      ),
    );
  }

  Widget postImageSection() {
    return postImage != ""
        ? Container(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            width: double.infinity,
            child: Image.asset(
              postImage,
              fit: BoxFit.cover,
            ),
          )
        : SizedBox();
  }

  Widget postTextSection() {
    return postText != ""
        ? Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              postText,
              maxLines: 50,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          )
        : SizedBox();
  }

  Widget postHeaderSection() {
    return ListTile(
      leading: ProfilePic(
        profileimg: postProfilePic,
        displayBorder: false,
      ),
      title: Row(
        children: [
          Text(
            profileName,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 10,
          ),
          showBlueTick ? BlueCheck() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishtime),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.public,
            color: Colors.grey[700],
            size: 15,
          ),
        ],
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          postCornerIcons(
            trailingIcon: Icons.more,
            iconAction: () {
              print("Show more");
            },
          ),
          postCornerIcons(
            trailingIcon: Icons.close,
            iconAction: () {
              print("close");
            },
          ),
        ],
      ),
    );
  }

  Widget postCornerIcons({
    required IconData trailingIcon,
    required void Function() iconAction,
  }) {
    return IconButton(
      onPressed: iconAction,
      icon: Icon(
        trailingIcon,
        color: Colors.grey[700],
      ),
    );
  }

  Widget postFooterSection() {
    return Column(
      children: [
        Container(
          height: 40,
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    child: Icon(
                      Icons.thumb_up,
                      color: Colors.white,
                      size: 15,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue[700],
                    ),
                  ),
                  commentNum(commentText: "$likeCount"),
                ],
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    commentNum(commentText: " $commentCount comments"),
                    commentNum(commentText: " . "),
                    commentNum(commentText: "$shareCount Shares"),
                  ],
                ),
              )
            ],
          ),
        ),
        Divider(
          thickness: 2,
          color: Colors.grey[300],
        ),
        SizedBox(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              lowerButtons(
                buttonIcon: Icons.thumb_up_outlined,
                buttonText: "Like",
              ),
              lowerButtons(
                buttonIcon: Icons.comment_outlined,
                buttonText: "Comment",
              ),
              lowerButtons(
                buttonIcon: Icons.send_outlined,
                buttonText: "Share",
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget lowerButtons({
    required IconData buttonIcon,
    required String buttonText,
  }) {
    return TextButton.icon(
      onPressed: () {},
      icon: Icon(
        buttonIcon,
        color: Colors.grey[700],
      ),
      label: Text(
        buttonText,
        style: TextStyle(
          color: Colors.grey[700],
        ),
      ),
    );
  }
}
