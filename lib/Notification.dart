import 'package:flutter/material.dart';

import 'AppFooter.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  int _currentIndex = 0;

  // Sample list of notifications
  final List<String> notifications = [
    'Notification 1: You have a new message.',
    'Notification 2: Your payment was successful.',
    'Notification 3: Upcoming event reminder.',
    'Notification 4: New feature update available.',
    'Notification 5: Account verification required.',
    'Notification 6: Congratulations! You won a prize.',
    // Add more notifications here...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              leading: Icon(Icons.notifications),
              title: Text(
                notifications[index],
                style: TextStyle(fontSize: 16),
              ),
              // Add onTap functionality if you want to navigate to a specific notification detail page
              onTap: () {
                // Implement onTap functionality if needed
              },
            ),
          );
        },
      ),
    );
  }
}
