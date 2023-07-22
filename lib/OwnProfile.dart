import 'package:flutter/material.dart';
import 'AppFooter.dart';

class OwnProfileScreen extends StatefulWidget {
  const OwnProfileScreen({Key? key}) : super(key: key);
  @override
  _OwnProfileScreenState createState() => _OwnProfileScreenState();
}

class _OwnProfileScreenState extends State<OwnProfileScreen> {
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
                                '17',
                                style: TextStyle(fontSize: 58,fontFamily: 'WaterLily',color: Color(0xFF365B6D)) //,
                            ),
                            SizedBox(height: 8),
                            Text(
                                'Following',
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
                        'Name',
                        style: TextStyle(fontSize: 38,fontFamily: 'WaterLily',color: Color(0xFF365B6D)) //,
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Bio in three sentance write anything about yourself and your business this will help you to communicate easily and make things easier......', // Replace with the actual bio
                      style: TextStyle(fontSize: 25,fontFamily: 'cavet',fontWeight: FontWeight.bold,color: Color(0xFF365B6D)),
                    ),
                    SizedBox(height: 16),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {

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
                          'Edit Profile',
                          style: TextStyle(
                            color: Color(0xfff2f1ec),
                            fontWeight: FontWeight.bold,
                            fontSize: 19.0,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 16),
                    Text(
                      'Achievements',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Container(
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemExtent: 80,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.grey,
                              child: Text('Achievement ${index + 1}', textAlign: TextAlign.center),
                            ),
                          );
                        },
                      ),
                    ),

                    SizedBox(height: 16),
                    Text(
                      'Posts',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                      ),
                      itemCount: 5,
                      itemBuilder: (context, index) {
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
          if (index == _currentIndex) return; // Does nothing if the same tab is tapped

          setState(() {
            _currentIndex = 4;
          });
        },
      ),
    );
  }
}
