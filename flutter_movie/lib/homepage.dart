import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Center(
            child: ListView(children: [
              Column(
                children: [
                  Row(
                    children: [
                      Center(child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal:80.0, vertical: 230.0),
                        child: Text('ae', style: TextStyle(fontSize: 100, color: Colors.amber),),
                      )),
                    ],
                  ),
                ],
              ),
            ]),
          ),
        ));
  }
}
  