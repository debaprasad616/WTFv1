import 'package:flutter/material.dart';
import 'package:wtf01/HomeScreen.dart';
import 'package:wtf01/Message.dart';
import 'package:wtf01/Profile.dart';
import 'AppFooter.dart';
import 'AppHeader.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs (Chats and Calls)
      child: Scaffold(
        backgroundColor: Color(0xfff2f1ec), // Set the background color of the Scaffold
        appBar: AppBar(
          backgroundColor: Color(0xfff2f1ec), // Set the background color of the AppBar
          elevation: 0, // Remove the shadow below the app bar
          flexibleSpace: AppHeader(), // Use AppHeader directly instead of wrapping it in a column
          bottom: TabBar(
            // Wrap TabBar with TabBarIndicatorSize and set its tabBarIndicatorSize property to TabBarIndicatorSize.label
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(
                child: Text(
                  'Trending Polls', // First tab with label "Chats"
                  style: TextStyle(fontSize: 24, color: Color(0xFF365B6D)),
                ),
              ),
              Tab(
                child: Text(
                  'Trending Chats', // Second tab with label "Calls"
                  style: TextStyle(fontSize: 24, color: Color(0xFF365B6D)),
                ),
              ),
            ],
            indicatorColor: Color(0xFF365B6D), // Customize the indicator color of the tabs
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            children: [
              // Content for the "Chats" tab
              Center(
                child: Text(
                  'trending polls here...',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              // Content for the "Calls" tab
              Center(
                child: Text(
                  'trending chats here...',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: AppFooter(
          currentIndex: _currentIndex,
          onTap: (index) {
            if (index == _currentIndex) return; // Doess nothing if the same tab is tapped

            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
