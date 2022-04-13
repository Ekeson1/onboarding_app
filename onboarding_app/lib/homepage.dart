import 'package:flutter/material.dart';
import 'package:onboarding_app/page2.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Padding(
        padding: const EdgeInsets.all(120.0),
        child: ListView(
          children: [
            Text(
              'ACP',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white, fontSize: 30,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page2(),
                    ));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 240.0),
                child: Text(
                  'Continue',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 13,
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

