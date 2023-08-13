import 'package:flutter/material.dart';
import 'package:wtf01/AppHeader.dart';
import 'AppFooter.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xfff2f1ec),
        appBar: AppBar(
          backgroundColor: Color(0xfff2f1ec),
          elevation: 0,
          flexibleSpace: Column(
            children: [
              AppHeader(),
              Expanded(child: SizedBox()),
            ],
          ),
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(
                child: Text(
                  'AM',
                  style: TextStyle(fontSize: 24, color: Color(0xFF365B6D)),
                ),
              ),
              Tab(
                child: Text(
                  'DM',
                  style: TextStyle(fontSize: 24, color: Color(0xFF365B6D)),
                ),
              ),
            ],
            indicatorColor: Color(0xFF365B6D),
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            children: [

              Center(
                child: Text(
                  'Chats Screen',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      // Search Bar
                      height: 40,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                      decoration: BoxDecoration(
                        color: Color(0xFFC5CDCE),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              style: TextStyle(
                                color: Color(0xFF667378),
                                fontSize: 20,
                              ),
                              decoration: InputDecoration(
                                hintText: 'Search anything...',
                                hintStyle: TextStyle(
                                  color: Color(0xFF93A5AC),
                                  fontSize: 25,
                                  fontFamily: 'Cavet',
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.search,
                            color: Color(0xFF365B6D),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Message Notification Screen',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
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
