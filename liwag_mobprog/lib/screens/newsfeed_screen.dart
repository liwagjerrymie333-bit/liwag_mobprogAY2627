import 'package:flutter/material.dart';

import '../widgets/newsfeed_card.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        NewsFeedCard(
          userName: 'Jm Liwag',
          postContent: 'Aray ko poo!',
          numOfLikes: 130,
          numOfComments: 20,
          date: 'November 14',
          hasImage: false,
          avatarPath: 'assets/images/profile.png',
        ),
        NewsFeedCard(
          userName: 'Jm Liwag',
          postContent: 'Iz thiz Tagalog?',
          numOfLikes: 150,
          numOfComments: 55,
          date: 'May 3',
          hasImage: true,
          imagePath: 'assets/images/post.png',
          avatarPath: 'assets/images/profile.png',
        ),
      ],
    );
  }
}
