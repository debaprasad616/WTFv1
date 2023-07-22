import 'package:flutter/material.dart';
class AppFooter extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  AppFooter({required this.currentIndex, required this.onTap});

  void _onTap(int index, BuildContext context) {
    if (index == currentIndex) return; // Do nothing if the same tab is tapped

    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/home');
        break;
      case 1:
        Navigator.pushReplacementNamed(context, '/message');
        break;
      case 2:
        Navigator.pushReplacementNamed(context, '/explore');
        break;
      case 3:
        Navigator.pushNamed(context, '/notification');
        break;
      case 4:
        Navigator.pushReplacementNamed(context, '/profile');
        break;
    }
  }


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) => _onTap(index, context),

      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xfff2f1ec),
      selectedItemColor: Color(0xff1AC3A9),
      elevation: 0.0,
      items: [
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.zero,
            child: ImageIcon(
              AssetImage('assets/icons/home.png'),
              size: 24,
            ),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.zero,
            child: ImageIcon(
              AssetImage('assets/icons/chat.png'),
              size: 24,
            ),
          ),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: Container(
            width: 64,
            height: 64,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/icons/explore.png',
                  width: 84,
                  height: 84,
                ),
              ],
            ),
          ),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.zero,
            child: ImageIcon(
              AssetImage('assets/icons/bell.png'),
              size: 24,
            ),
          ),
          label: 'Notification',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.zero,
            child: ImageIcon(
              AssetImage('assets/icons/avatar.png'),
              size: 24,
            ),
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
