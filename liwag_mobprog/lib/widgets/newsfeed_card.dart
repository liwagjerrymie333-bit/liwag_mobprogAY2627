import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';
import 'custom_text.dart';

class NewsFeedCard extends StatelessWidget {
  final String userName;
  final String postContent;
  final String date;
  final int numOfLikes;
  final int numOfComments;
  final bool hasImage;
  final String? imagePath;
  final String avatarPath;

  const NewsFeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    this.numOfLikes = 0,
    this.numOfComments = 0,
    this.hasImage = false,
    this.imagePath,
    this.avatarPath = '',
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(ScreenUtil().setSp(10)),
      child: Padding(
        padding: EdgeInsets.all(ScreenUtil().setSp(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top part: profile picture, name, date
            Row(
              children: [
                avatarPath.isEmpty
                    ? const Icon(Icons.person)
                    : CircleAvatar(
                        radius: ScreenUtil().setWidth(16),
                        backgroundImage: AssetImage(avatarPath),
                      ),
                SizedBox(width: ScreenUtil().setWidth(10)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: userName,
                      fontSize: ScreenUtil().setSp(15),
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    Row(
                      children: [
                        CustomText(
                          text: date,
                          fontSize: ScreenUtil().setSp(12),
                          color: Colors.grey,
                        ),
                        SizedBox(width: ScreenUtil().setWidth(3)),
                        Icon(
                          Icons.public,
                          color: Colors.grey,
                          size: ScreenUtil().setSp(15),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.more_horiz),
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(5)),

            // Post content
            CustomText(
              text: postContent,
              fontSize: ScreenUtil().setSp(12),
              color: Colors.black,
            ),
            SizedBox(height: ScreenUtil().setHeight(5)),

            // Image area
            if (hasImage)
              Image.asset(
                imagePath ?? 'assets/images/post.png',
                width: double.infinity,
                height: ScreenUtil().setHeight(200),
                fit: BoxFit.cover,
              ),

            // Like, Comment, Share buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  onPressed: () {
                    debugPrint('Liked');
                  },
                  icon: const Icon(Icons.thumb_up, color: FB_DARK_PRIMARY),
                  label: CustomText(
                    text: numOfLikes.toString(),
                    fontSize: ScreenUtil().setSp(12),
                    color: FB_DARK_PRIMARY,
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.comment, color: FB_DARK_PRIMARY),
                  label: CustomText(
                    text: numOfComments > 0
                        ? numOfComments.toString()
                        : 'Comment',
                    fontSize: ScreenUtil().setSp(12),
                    color: FB_DARK_PRIMARY,
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.redo, color: FB_DARK_PRIMARY),
                  label: CustomText(
                    text: 'Share',
                    fontSize: ScreenUtil().setSp(12),
                    color: FB_DARK_PRIMARY,
                  ),
                ),
              ],
            ),

            // Write a comment box
            Row(
              children: [
                const Icon(Icons.person),
                SizedBox(width: ScreenUtil().setWidth(10)),
                Container(
                  padding: EdgeInsets.fromLTRB(ScreenUtil().setSp(10), 0, 0, 0),
                  alignment: Alignment.centerLeft,
                  height: ScreenUtil().setHeight(25),
                  width: ScreenUtil().setWidth(330),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(
                      Radius.circular(ScreenUtil().setSp(10)),
                    ),
                  ),
                  child: CustomText(
                    text: 'Write a comment...',
                    fontSize: ScreenUtil().setSp(11),
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            CustomText(
              text: 'View comments',
              fontSize: ScreenUtil().setSp(12),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
