import 'package:flutter/material.dart';
import 'package:wtf01/Explore.dart';
import 'package:wtf01/HomeScreen.dart';
import 'package:wtf01/Message.dart';
import 'package:wtf01/OwnProfile.dart';

import 'AppFooter.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        color: Color(0xfff2f1ec),
        padding: EdgeInsets.only(top: 50),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 80,
                      // Replace 'profile_image.jpg' with the actual image path or URL
                      backgroundImage: AssetImage('assets/profile_image.jpg'),
                    ),
                    SizedBox(width: 16),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '29', // Replace with the actual number of followers
                                style: TextStyle(fontSize: 58,fontFamily: 'WaterLily',color: Color(0xFF365B6D)) //,
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Followers', // Replace with the actual number of followers
                                style: TextStyle(fontSize: 22,fontFamily: 'WaterLily',color: Color(0xFF365B6D)) //,
                            ),
                          ],
                        ),
                        SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '17', // Replace with the actual number of following
                                style: TextStyle(fontSize: 58,fontFamily: 'WaterLily',color: Color(0xFF365B6D)) //,
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Following', // Replace with the actual number of following
                                style: TextStyle(fontSize: 22,fontFamily: 'WaterLily',color: Color(0xFF365B6D)) //,

                            ),
                          ],
                        ),
                      ],
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Username',
                      style: TextStyle(fontSize: 38,fontFamily: 'cavet',fontWeight: FontWeight.bold,color: Color(0xFF365B6D)),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Name', // Replace with the actual name
                      style: TextStyle(fontSize: 38,fontFamily: 'WaterLily',color: Color(0xFF365B6D)) //,
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Bio in three sentance write anything about yourself and your business this will help you to communicate easily and make things easier......', // Replace with the actual bio
                      style: TextStyle(fontSize: 25,fontFamily: 'cavet',fontWeight: FontWeight.bold,color: Color(0xFF365B6D)),
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Implement follow button action here
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff1AC3A9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            elevation: 0,
                            fixedSize: Size.fromHeight(48),
                          ),
                          child: Text(
                            'Follow',
                            style: TextStyle(
                              color: Color(0xfff2f1ec),
                              fontWeight: FontWeight.bold,
                              fontSize: 19.0,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Implement message button action here
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff1AC3A9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            elevation: 0,
                            fixedSize: Size.fromHeight(48),
                          ),
                          child: Text(
                            'Message',
                            style: TextStyle(
                              color: Color(0xfff2f1ec),
                              fontWeight: FontWeight.bold,
                              fontSize: 19.0,
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 16),
                    Text(
                      'Achievements', // Replace with the actual achievements
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Container(
                      height: 100,
                      // Replace the child with a list of achievements
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5, // Replace with the actual number of achievements
                        itemExtent: 80, // Set the extent to adjust the size of each card
                        itemBuilder: (context, index) {
                          // Replace this with your achievement card widget
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8), // Add space between cards
                            child: CircleAvatar(
                              radius: 40, // Make the CircleAvatar smaller
                              backgroundColor: Colors.grey,
                              child: Text('Achievement ${index + 1}', textAlign: TextAlign.center),
                            ),
                          );
                        },
                      ),
                    ),

                    SizedBox(height: 16),
                    Text(
                      'Posts', // Replace with the actual posts
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    // Replace the child with a list of post cards
                    // You can use ListView.builder to build the list of post cards
                    // Example:
                    GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // Adjust the number of columns here (2 for 2 columns)
                        crossAxisSpacing: 8, // Adjust the spacing between columns
                        mainAxisSpacing: 8, // Adjust the spacing between rows
                      ),
                      itemCount: 5, // Replace with the actual number of posts
                      itemBuilder: (context, index) {
                        // Replace this with your post card widget
                        return Card(
                          child: Container(
                            padding: EdgeInsets.all(16),
                            child: Text('Post ${index + 1}'),
                          ),
                        );
                      },
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: AppFooter(
        currentIndex: _currentIndex,
        onTap: (index) {
          if (index == _currentIndex) return; // Do nothing if the same tab is tapped

          setState(() {
            _currentIndex = index;
          });

          // Add any navigation or other functionality based on the tapped index here
          switch (index) {
            case 0:
              Navigator.pushReplacementNamed(context, '/home');
              break;
            case 1:
              Navigator.pushNamed(context, '/message');
              break;
            case 2:
              Navigator.pushNamed(context, '/explore');
              break;
            case 3:
              Navigator.pushNamed(context, '/notification');
              break;
            case 4:
              Navigator.pushNamed(context, '/profile');
              break;
          }
        },
      ),
    );
  }
}
