import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/notification.dart' as notif;

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() =>
      _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: ScreenUtil().screenWidth,
        child: ListView(
          children: const [

            // NOTIFICATION 1
            notif.Notification(
              name: 'Jm Liwag',
              post: 'New Post',
              description: 'Liked your recent post.',
            ),
            Divider(),

            // NOTIFICATION 2
            notif.Notification(
              name: 'Cindy Mae Liwag',
              post: 'New Post',
              description: 'Commented on your post.',
            ),
            Divider(),

            // NOTIFICATION 3
            notif.Notification(
              name: 'Jade Ashley Bino',
              post: 'Shared Post',
              description: 'Shared your post.',
            ),
            Divider(),

            // NOTIFICATION 4
            notif.Notification(
              name: 'Angela Lagto',
              post: 'New Post',
              description: 'Liked your recent photo.',
            ),
            Divider(),

            // NOTIFICATION 5
            notif.Notification(
              name: 'Andrew De Leon',
              post: 'New Post',
              description: 'Commented: Feeling blessed too!',
            ),
            Divider(),

            // NOTIFICATION 6
            notif.Notification(
              name: 'Uncle Dogs',
              post: 'New Post',
              description: 'Liked your post.',
            ),
            Divider(),

            // NOTIFICATION 7
            notif.Notification(
              name: 'Sophia Abegail Dumlan',
              post: 'Shared Post',
              description: 'Shared your recent post.',
            ),
            Divider(),

            // NOTIFICATION 8
            notif.Notification(
              name: 'Jhedy Mae Razon',
              post: 'New Post',
              description: 'Commented on your photo.',
            ),
            Divider(),

            // NOTIFICATION 9
            notif.Notification(
              name: 'Shaira Maullon',
              post: 'New Post',
              description: 'Liked your family photo.',
            ),
            Divider(),

            // NOTIFICATION 10
            notif.Notification(
              name: 'Jm Liwag',
              post: 'New Post',
              description: 'Commented: Thank you everyone!',
            ),
            Divider(),

            // NOTIFICATION 11
            notif.Notification(
              name: 'Cindy Mae Liwag',
              post: 'New Post',
              description: 'Liked your recent post.',
            ),
            Divider(),

            // NOTIFICATION 12
            notif.Notification(
              name: 'Jade Ashley Bino',
              post: 'New Post',
              description: 'Commented: Cute cat!',
            ),
            Divider(),

            // NOTIFICATION 13
            notif.Notification(
              name: 'Angela Lagto',
              post: 'Shared Post',
              description: 'Shared your post with friends.',
            ),
            Divider(),

            // NOTIFICATION 14
            notif.Notification(
              name: 'Andrew De Leon',
              post: 'New Post',
              description: 'Liked your recent photo.',
            ),
            Divider(),

            // NOTIFICATION 15
            notif.Notification(
              name: 'Uncle Dogs',
              post: 'New Post',
              description: 'Commented on your post.',
            ),
            Divider(),

            // NOTIFICATION 16
            notif.Notification(
              name: 'Sophia Abegail Dumlan',
              post: 'New Post',
              description: 'Liked your recent selfie.',
            ),
            Divider(),

            // NOTIFICATION 17
            notif.Notification(
              name: 'Jhedy Mae Razon',
              post: 'Shared Post',
              description: 'Shared your post.',
            ),
            Divider(),

            // NOTIFICATION 18
            notif.Notification(
              name: 'Shaira Maullon',
              post: 'New Post',
              description: 'Commented: Love this!',
            ),
            Divider(),

            // NOTIFICATION 19
            notif.Notification(
              name: 'Jm Liwag',
              post: 'New Post',
              description: 'Liked your recent update.',
            ),
            Divider(),

            // NOTIFICATION 20
            notif.Notification(
              name: 'Cindy Mae Liwag',
              post: 'New Post',
              description: 'Shared your post with friends.',
            ),
            Divider(),

          ],
        ),
      ),
    );
  }
}