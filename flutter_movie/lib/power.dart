
import 'package:flutter/material.dart';
import 'package:flutter_movie/welcomePage.dart';

import 'apparel.dart';
import 'categories.dart';
import 'filter.dart';
import 'jeans.dart';

class Power extends StatefulWidget {
  Power({Key? key}) : super(key: key);

  @override
  State<Power> createState() => _PowerState();
}

class _PowerState extends State<Power> {
  List bottomItems = [
    {'icon': Icons.home},
    {'icon': Icons.message},
    {'icon': Icons.shopping_bag},
    {'icon': Icons.favorite},
    {'icon': Icons.person},
  ];
  late Welcome_Page page1;
  late Categories page2;
  late Apparel page3;
  late Jeans page4;
  late Filter page5;

  List<Widget> pages = [];
  late Widget currentPage;
  int pageIndex = 0;

  @override
  void initState() {
    super.initState();
    page1 = Welcome_Page();
    page2 = Categories();
    page3 = Apparel();
    page4 = Jeans();
    page5 = Filter();

    pages = [page1, page2, page3, page4, page5];
    currentPage = page1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentPage,
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: pageIndex,
        onTap: (int index) {
          setState(() {
            pageIndex = index;
            currentPage = pages[index];
          });
        },
        items: List.generate(bottomItems.length, (index) {
          return BottomNavigationBarItem(
            title: Text(""),
            icon: Icon(
              
              bottomItems[index]['icon'],
              size: 30,
            ),
          );
        }),
      ),
    );
  }
}
