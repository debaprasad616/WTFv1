import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wtf01/Explore.dart';
import 'package:wtf01/HomeScreen.dart';
import 'package:wtf01/Login.dart';
import 'package:wtf01/Message.dart';
import 'package:wtf01/OwnProfile.dart';
import 'package:wtf01/resources/auth_methods.dart';
import 'package:wtf01/resources/firestore_methods.dart';
import 'package:wtf01/utils/colors.dart';
import 'package:wtf01/utils/utils.dart';
import 'package:wtf01/widgets/follow_button.dart';

import 'AppFooter.dart';
import 'custom_widgets/CustomButton.dart';

class ProfileScreen extends StatefulWidget {
  final String uid;
  const ProfileScreen({Key? key ,required this.uid}) : super(key: key);


  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _currentIndex = 0;
  var userData = {};
  int postLen = 0;
  int followers = 0;
  int following = 0;
  bool isFollowing = false;
  bool isLoading = false;


  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    setState(() {
      isLoading = true;
    });
    try {
      var userSnap = await FirebaseFirestore.instance
          .collection('users')
          .doc(widget.uid)
          .get();

      // get post lENGTH
      var postSnap = await FirebaseFirestore.instance
          .collection('posts')
          .where('uid', isEqualTo: FirebaseAuth.instance.currentUser!.uid)
          .get();

      postLen = postSnap.docs.length;
      userData = userSnap.data()!;
      print(userData );
      print("Data");
      followers = userSnap.data()!['followers'].length;
      following = userSnap.data()!['following'].length;
      isFollowing = userSnap
          .data()!['followers']
          .contains(FirebaseAuth.instance.currentUser!.uid);
      setState(() {});
    } catch (e) {
      showSnackBar(
        context,
        e.toString(),
      );
    }
    setState(() {
      isLoading = false;
    });
  }


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
                      backgroundColor: Colors.green,
                    ),
                    SizedBox(width: 16),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '${followers}', // Replace with the actual number of followers
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
                              '${following}', // Replace with the actual number of following
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
                      '${userData['username']}',
                      style: TextStyle(fontSize: 38,fontFamily: 'cavet',fontWeight: FontWeight.bold,color: Color(0xFF365B6D)),
                    ),
                    SizedBox(height: 8),
                    Text(
                    '${userData['name']}', // Replace with the actual name
                      style: TextStyle(fontSize: 38,fontFamily: 'WaterLily',color: Color(0xFF365B6D)) //,
                    ),
                    SizedBox(height: 8),
                    Text(
                      '${userData['bio']}'+'ok', // Replace with the actual bio
                      style: TextStyle(fontSize: 25,fontFamily: 'cavet',fontWeight: FontWeight.bold,color: Color(0xFF365B6D)),
                    ),
                    SizedBox(height: 16),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //   children: [
                    //     ElevatedButton(
                    //       onPressed: () {
                    //         // Implement follow button action here
                    //       },
                    //       style: ElevatedButton.styleFrom(
                    //         primary: Color(0xff1AC3A9),
                    //         shape: RoundedRectangleBorder(
                    //           borderRadius: BorderRadius.circular(8.0),
                    //         ),
                    //         elevation: 0,
                    //         fixedSize: Size.fromHeight(48),
                    //       ),
                    //       child: Text(
                    //         'Follow',
                    //         style: TextStyle(
                    //           color: Color(0xfff2f1ec),
                    //           fontWeight: FontWeight.bold,
                    //           fontSize: 19.0,
                    //         ),
                    //       ),
                    //     ),
                    //     ElevatedButton(
                    //       onPressed: () {
                    //         // Implement message button action here
                    //       },
                    //       style: ElevatedButton.styleFrom(
                    //         primary: Color(0xff1AC3A9),
                    //         shape: RoundedRectangleBorder(
                    //           borderRadius: BorderRadius.circular(8.0),
                    //         ),
                    //         elevation: 0,
                    //         fixedSize: Size.fromHeight(48),
                    //       ),
                    //       child: Text(
                    //         'Message',
                    //         style: TextStyle(
                    //           color: Color(0xfff2f1ec),
                    //           fontWeight: FontWeight.bold,
                    //           fontSize: 19.0,
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly,
                      children: [
                        FirebaseAuth.instance.currentUser!.uid == widget.uid
                            ?
                        CustomButton(
                          text: 'Sign Out',

                          onPress: () async {
                            await AuthMethods().signOut();
                            if (context.mounted) {
                              Navigator.of(context)
                                  .pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) =>
                                  const LoginPage(),
                                ),
                              );
                            }
                          },
                        ).box.width(context.screenWidth*.9).make(): isFollowing
                            ?
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomButton(
                              text: 'Unfollow',

                              onPress: () async {
                                await FireStoreMethods()
                                    .followUser(
                                  FirebaseAuth.instance
                                      .currentUser!.uid,
                                  userData['uid'],
                                );

                                setState(() {
                                  isFollowing = false;
                                  followers--;
                                });
                              },
                            ).box.width(context.screenWidth*.4).make(),
                            CustomButton(
                              text: 'Message',

                              onPress: () async {
                                await FireStoreMethods()
                                    .followUser(
                                  FirebaseAuth.instance
                                      .currentUser!.uid,
                                  userData['uid'],
                                );

                                setState(() {
                                  isFollowing = false;
                                  followers--;
                                });
                              },
                            ).box.width(context.screenWidth*.4).make(),
                          ],
                        ).box.width(context.screenWidth*.9).make()
                            :
                        CustomButton(
                          text: 'Follow',

                          onPress: () async {
                            await FireStoreMethods()
                                .followUser(
                              FirebaseAuth.instance
                                  .currentUser!.uid,
                              userData['uid'],
                            );

                            setState(() {
                              isFollowing = true;
                              followers++;
                            });
                          },
                        ).box.width(context.screenWidth*.9).make(),
                      ],
                    ),

                    SizedBox(height: 16),
                    Text(
                      'Achievements', // Replace with the actual achievements
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),

                    SizedBox(height: 16),


                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
