import 'package:ban_viet_interview/screens/dash_board_page.dart';
import 'package:ban_viet_interview/theme/color.dart';
import 'package:flutter/material.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int pageIndex = 0;

  void onTabTapped(index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: [
        DashBoardPage(),
        Center(
          child: Text(
            "Saving",
            style: TextStyle(fontSize: 20, color: white),
          ),
        ),
        Center(
          child: Text(
            "Invoice",
            style: TextStyle(fontSize: 20, color: white),
          ),
        ),
        Center(
          child: Text(
            "Setting",
            style: TextStyle(fontSize: 20, color: white),
          ),
        ),
      ],
    );
  }

  Widget getFooter() {
    return BottomNavigationBar(
      backgroundColor: primary,
      selectedItemColor: white,
      unselectedItemColor: secondary,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0,
      onTap: onTabTapped,
      currentIndex: pageIndex,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.cached_outlined,
              size: 30,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.savings,
              size: 30,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.payment_outlined,
              size: 30,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 30,
            ),
            label: ""),
      ],
    );
  }

  selectedTab(index) {
    setState(() {
      pageIndex = index;
    });
  }
}
