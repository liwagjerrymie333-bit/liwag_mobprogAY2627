
import 'package:flutter/material.dart';

import '../widgets/newsfeed_card.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // POST 1
        NewsFeedCard(
          userName: 'Jm Liwag',
          postContent: 'hey guys, just got on Facebook add me',
          numOfLikes: 130,
          numOfComments: 20,
          date: 'January 14',
          hasImage: false,
          avatarPath: 'assets/images/profile.png',
        ),

        // POST 2
        NewsFeedCard(
          userName: 'Jm Liwag',
          postContent: 'Successful event with my effs',
          numOfLikes: 150,
          numOfComments: 55,
          date: 'February 3',
          hasImage: true,
          imagePath: 'assets/images/post.png',
          avatarPath: 'assets/images/profile.png',
        ),

        // POST 3
        NewsFeedCard(
          userName: 'Cindy Mae Liwag',
          postContent: 'just woke up, wtg?',
          numOfLikes: 85,
          numOfComments: 12,
          date: 'February 15',
          hasImage: false,
          avatarPath: 'assets/images/pussy.png',
        ),

        // POST 4
        NewsFeedCard(
          userName: 'Jade Ashley Bino',
          postContent: 'love my cat so much <3',
          numOfLikes: 200,
          numOfComments: 45,
          date: 'March 16',
          hasImage: true,
          imagePath: 'assets/images/cat.png',
          avatarPath: 'assets/images/jade.png',
        ),

        // POST 5
        NewsFeedCard(
          userName: 'Angela Lagto',
          postContent: 'Keep smiling even when times are tough :)',
          numOfLikes: 95,
          numOfComments: 18,
          date: 'April 17',
          hasImage: false,
          avatarPath: 'assets/images/seattle.png',
        ),

        // POST 6
        NewsFeedCard(
          userName: 'Andrew De Leon',
          postContent: 'Feeling blessed.',
          numOfLikes: 175,
          numOfComments: 30,
          date: 'April 28',
          hasImage: true,
          imagePath: 'assets/images/boat.png',
          avatarPath: 'assets/images/karl.png',
        ),

        // POST 7
        NewsFeedCard(
          userName: 'Uncle Dogs',
          postContent: 'Tutok mo yung camera kay Uncle Dogs!',
          numOfLikes: 110,
          numOfComments: 25,
          date: 'May 5',
          hasImage: false,
          avatarPath: 'assets/images/butch.png',
        ),

        // POST 8
        NewsFeedCard(
          userName: 'Sophia Abegail Dumlan',
          postContent: 'Felt cute, might delete later.',
          numOfLikes: 250,
          numOfComments: 60,
          date: 'May 22',
          hasImage: true,
          imagePath: 'assets/images/sophia.png',
          avatarPath: 'assets/images/avorat.png',
        ),

        // POST 9
        NewsFeedCard(
          userName: 'Jhedy Mae Razon',
          postContent: 'Look at my lollipop guys!',
          numOfLikes: 75,
          numOfComments: 10,
          date: 'June 2',
          hasImage: false,
          avatarPath: 'assets/images/jhedy.png',
        ),

        // POST 10
        NewsFeedCard(
          userName: 'Shaira Maullon',
          postContent: 'Love my family so much!',
          numOfLikes: 300,
          numOfComments: 80,
          date: 'June 17',
          hasImage: true,
          imagePath: 'assets/images/fam.png',
          avatarPath: 'assets/images/shai.png',
        ),
      ],
    );
  }
}
