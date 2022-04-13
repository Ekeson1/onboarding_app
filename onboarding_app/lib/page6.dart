// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:onboarding_app/page7.dart';

class Page6 extends StatelessWidget {
   Page6({Key? key}) : super(key: key);

    int _selectedIndex = 0;


  get children => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
        child: Center(
          child: ListView(
            children: [
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.all(
                    15.0,
                  )),
                  Text('Net Worth'),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 3.0)),
                  Icon(Icons.visibility),
                  Padding(
                      padding: EdgeInsets.symmetric(
                    horizontal: 50.0,
                  )),
                  Icon(
                    Icons.notifications,
                    color: Colors.grey,
                  ),
                  Icon(
                    Icons.settings,
                    color: Colors.grey,
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 20.0)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  '\$22,643.40',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 6.0, vertical: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(7),
                          child: Container(
                            height: 80,
                            width: 100,
                            color: Colors.white,
                            child: Row(
                              children: [
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: .0)),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.monetization_on,
                                          color: Colors.red,
                                        ),
                                        Text('Cash'),
                                      ],
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 5.0, horizontal: 65.0)),
                                    Text(
                                      '\$2,349.20',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      child: Container(
                        height: 80,
                        width: 125,
                        color: Colors.white,
                        child: Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5.0)),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.monetization_on_rounded,
                                      color: Colors.red,
                                    ),
                                    Text(
                                      'Assets',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 5.0)),
                                Text(
                                  '\$20,294.20',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  'My Investments',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                    height: 40,
                    width: 80,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.symmetric(horizontal: 5.0)),
                        Text(
                          'Search',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 90.0)),
                        Icon(Icons.search, color: Colors.red, size: 30),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 35.0, horizontal: 30.0),
                          child: Column(
                            children: [
                              Container(
                                height: 25,
                                width: 60,
                                color: Colors.red,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child: Text(
                                    'Stocks',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 7),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5.0),
                                    child: Text('Tesla Inc',
                                        style: TextStyle(
                                            fontSize: 7, color: Colors.grey)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: .0),
                                    child: Text('\$736.27',
                                        style: TextStyle(
                                            fontSize: 7,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: .0),
                                    child: Text('TSLA',
                                        style: TextStyle(
                                            fontSize: 7, color: Colors.grey)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: .0),
                                    child: Text('-1859(246%)',
                                        style: TextStyle(
                                            fontSize: 7,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 35.0, horizontal: 25.0),
                          child: Column(
                            children: [
                              Container(
                                height: 25,
                                width: 60,
                                color: Colors.green,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child: Text(
                                    'Stocks',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 7),
                                  ),
                                ),
                              ),
                              Row(children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5.0),
                                  child: Text(
                                    'Starbucks',
                                    style: TextStyle(
                                        fontSize: 7, color: Colors.grey),
                                  ),
                                ),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 4.0)),
                                Text(
                                  '\$110.34',
                                  style: TextStyle(
                                      fontSize: 7, fontWeight: FontWeight.bold),
                                ),
                              ]),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: .0),
                                    child: Text('SBUX',
                                        style: TextStyle(
                                            fontSize: 7, color: Colors.grey)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: .0),
                                    child: Text('+0.55(0.46%)',
                                        style: TextStyle(
                                            fontSize: 7,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.green)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 35.0, horizontal: 30.0),
                          child: Column(
                            children: [
                              Container(
                                height: 25,
                                width: 60,
                                color: Colors.black,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child: Text(
                                    'Index',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 7),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5.0),
                                    child: Text('S&P500',
                                        style: TextStyle(
                                            fontSize: 7, color: Colors.grey)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: .0),
                                    child: Text('\$4,458.85',
                                        style: TextStyle(
                                            fontSize: 7,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: .0),
                                    child: Text('-34.70(0.77%)',
                                        style: TextStyle(
                                            fontSize: 7,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 35.0, horizontal: .0),
                          child: Column(
                            children: [
                              Container(
                                height: 25,
                                width: 60,
                                color: Colors.blue,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child: Text(
                                    'Real Estate',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 7),
                                  ),
                                ),
                              ),
                              Row(children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5.0),
                                  child: Text(
                                    'Annualy Capital',
                                    style: TextStyle(
                                        fontSize: 7, color: Colors.grey),
                                  ),
                                ),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 4.0)),
                                Text(
                                  '\$8.52',
                                  style: TextStyle(
                                      fontSize: 7, fontWeight: FontWeight.bold),
                                ),
                              ]),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: .0),
                                    child: Text('Management\\\\\\\\\\\\\\\\\\\\\\\\\\',
                                        style: TextStyle(
                                            fontSize: 7, color: Colors.grey)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: .0),
                                    child: Text('-0030(0.35%)',
                                        style: TextStyle(
                                            fontSize: 7,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(children: [
                  Padding(
                   padding: EdgeInsets.symmetric(horizontal: 120.0)),
                    Text('See All',style: TextStyle(fontSize: 12, color: Colors.grey),
               ),
              ]),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text('Others', style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 70,
                    width: 120,
                    color: Colors.white,
                       child: Row(
                         children: [
                           Expanded(
                             child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                                child: Wrap(
                                  alignment: WrapAlignment.end,
                                  direction: Axis.vertical,
                                  children:[
                                   Text('Portfolio Allocation', style: TextStyle(fontWeight: FontWeight.bold),),
                                   Padding(
                                     padding: const EdgeInsets.symmetric(vertical: 4.0 ),
                                     child: Text('Get free advice for your portfolio', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                                   )
                                  ],
                              ),
                           ),
                       ),
                       Icon(Icons.pie_chart, size: 40, color: Colors.blue,),
                       Icon(Icons.bar_chart, size: 40, color: Colors.blue,),
                       ], 
                       ), 
                    ),
                  ),
                ),
              ],
          ),
        ),
      ),
         
    );
  }
}
 