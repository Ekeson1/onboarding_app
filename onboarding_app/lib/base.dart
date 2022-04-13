import 'package:flutter/material.dart';
import 'package:onboarding_app/page5.dart';
import 'package:onboarding_app/page6.dart';
import 'package:onboarding_app/page7.dart';
import 'package:onboarding_app/page8.dart';

class Base extends StatefulWidget {
  Base({Key? key}) : super(key: key);

  @override
  State<Base> createState() => _BaseState();
}

class _BaseState extends State<Base> {
  List bottomItems = [
    {'icon': Icons.home, 'text': 'Home'},
    {'icon': Icons.invert_colors_rounded, 'text': 'Invest'},
    {'icon': Icons.monetization_on, 'text': 'Transaction'},
    {'icon': Icons.pie_chart, 'text': 'Plan'},
    {'icon': Icons.menu, 'text': 'Menu'},
  ];
  late Page5 page1;
  late Page6 page2;
  late Page7 page3;
  late Page8 page4;

  List<Widget> pages = [];
  late Widget currentPage;
  int pageIndex = 0;

  @override
  void initState() {
    super.initState();
    page1 = Page5();
    page2 = Page6();
    page3 = Page7();
    page4 = Page8();

    pages = [page1, page2, page3, page4];
    currentPage = page1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentPage,
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.red,
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
              icon: Icon(
                bottomItems[index]['icon'],
              ),
              label: bottomItems[index]['text']);
        }),
      ),
    );
  }
}
