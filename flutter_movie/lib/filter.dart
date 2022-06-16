import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Filter extends StatefulWidget {
  Filter({Key? key}) : super(key: key);

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: ListView(
            children: [
              Column(
                children: [
                  Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15.0, vertical: 20.0),
                child: Row(
                  children: [
                    Icon(Icons.cancel),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: Text('Filter'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Text('Clear'),
                    ),
                  ],
                ),
                 ),
                 Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15.0, vertical: 20.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text('Category'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: Text(''),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text('All'),
                    ),
                  ],
                ),
                 ),
                 SizedBox(
                height: 20,
                width: 300,
                child: Divider(
                  color: Colors.grey.shade400,
                ),
              ),
                 Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15.0, vertical: 20.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text('Material'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: Text(''),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text('Cotton'),
                    ),
                  ],
                ),
                 ),
                 SizedBox(
                height: 20,
                width: 300,
                child: Divider(
                  color: Colors.grey.shade400,
                ),
              ),
                 Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15.0, vertical: 20.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text('Shipment'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: Text(''),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text('Turkey'),
                    ),
                  ],
                ),
                 ),
                 SizedBox(
                height: 20,
                width: 300,
                child: Divider(
                  color: Colors.grey.shade400,
                ),
              ),
                 Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Text('Free Shipment'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3.0),
                      child: CupertinoSwitch(
                        value: true,
                        onChanged: (value)  {
                        
                      },),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: Text(''),
                    ),
                  ],
                ),
                 ),
                 Padding(
                   padding: const EdgeInsets.symmetric(vertical: 10.0),
                   child: Text('Price'),
                 ),
                 Row(
                   children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
                      child: Text('\$10'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 95.0, vertical: 5.0),
                      child: Text('\$440'),
                    ),
                   ],
                 ),
                 Row(children: [
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 30.0),
                     child: Icon(Icons.circle, color: Colors.red,),
                   ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 95.0),
                     child: Icon(Icons.circle, color: Colors.red,),
                   ),
                 ],),
                 Padding(
                   padding: const EdgeInsets.symmetric(vertical: 15.0),
                   child: ClipRRect(
                     borderRadius: BorderRadius.circular(40),
                     child: Container(
                       height: 50,
                       width: 260,
                       color: Colors.yellow.shade800,
                       child: Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 100.0,vertical: 10.0),
                         child: Text('Apply', style: TextStyle(color: Colors.white),),
                       ),
                     ),
                   ),
                 )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}