import 'package:fl_exam_createdlayout/pages/navpages/bar_item_page.dart';
import 'package:fl_exam_createdlayout/pages/navpages/home_page.dart';
import 'package:fl_exam_createdlayout/pages/navpages/my_page.dart';
import 'package:fl_exam_createdlayout/pages/navpages/search_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [HomePage(), BarItemPage(), SearchPage(), MyPage()];
  int currenIndex = 0;
  void onTap(int index) {
    setState(() {
      currenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currenIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTap,
          type: BottomNavigationBarType.fixed,
          currentIndex: currenIndex,
          unselectedFontSize: 0,
          selectedFontSize: 0,
          selectedItemColor: Colors.black54,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showSelectedLabels: false,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.apps),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_sharp),
              label: 'Bar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'My',
            )
          ]),
    );
  }
}
