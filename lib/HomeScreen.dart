import 'package:flutter/material.dart';
import 'package:wtf01/AppFooter.dart';
import 'package:wtf01/AppHeader.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentIndex = 0;

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
      _pageController.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.linear);
    });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f1ec),
      body: Column(
        children: [
          AppHeader(),
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
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Text(
                          "Latest Games",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color(0xFF365B6D),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 300,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: latestGamesImagesList.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.all(20),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      'assets/latestGamesImages/${latestGamesImagesList[index]}.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Updates",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color(0xFF365B6D),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 300,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: updatesImagesList.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.all(20),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      'assets/updatesImages/${updatesImagesList[index]}.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

  List<String> latestGamesImagesList = ['pic1','pic2','pic4'];
  List<String> updatesImagesList = ['pic1','pic2'];

