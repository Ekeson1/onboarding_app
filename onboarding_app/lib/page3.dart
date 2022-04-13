import 'package:flutter/material.dart';

import 'page4.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(40.0),
        child: ListView(
          children: [
            Image(
              image: const AssetImage('assets/pic2.jpg'),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 15.0)),
            Text(
              'Detail Statistics',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(
              vertical: 7.0,
            )),
            Text(
              'See all your financial details with detailed break down of your income, spendings and investments.',
              style: TextStyle(
                fontSize: 11,
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(vertical: 60.0)),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                height: 40,
                width: 35,
                color: Colors.red,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Page4()));
                  },
                  child: Text(
                    'Continue',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
