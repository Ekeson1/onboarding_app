import 'package:flutter/material.dart';
import 'package:onboarding_app/page6.dart';

class Page5 extends StatelessWidget {
  Page5({Key? key}) : super(key: key);

  int _selectedIndex = 0;

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
              Text('Primary account'),
              Padding(padding: EdgeInsets.symmetric(horizontal: 3.0)),
              Icon(Icons.visibility),
            ],
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 20.0)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              '\$2,749.00',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 100,
                width: 200,
                color: Colors.white,
                child: Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(
                        21.0,
                      ),
                      child: Wrap(
                        alignment: WrapAlignment.end,
                        direction: Axis.vertical,
                        children: [
                          Padding(padding: EdgeInsets.symmetric(vertical: 0.0)),
                          Text('Primary Account', style: TextStyle(fontWeight: FontWeight.bold),),
                          Text('198-25710-3748', style: TextStyle(fontSize: 12, color: Colors.grey),),
                          Padding(padding: EdgeInsets.symmetric(vertical: 3.5)),
                          Text('Available Balance', style: TextStyle(fontSize: 12, color: Colors.grey),),
                        ],
                      ),
                    )),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Wrap(
                        alignment: WrapAlignment.end,
                        direction: Axis.vertical,
                        children: [
                          Icon(
                            Icons.house,
                            size: 50,
                            color: Colors.red,
                          ),
                          Text(
                            '\$2,220.80',
                            style:  TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
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
                    borderRadius: BorderRadius.circular(5),
                    child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 20.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Column(
                          children: [
                            Container(
                              height: 25,
                              width: 25,
                              color: Colors.red,
                              child: Icon(
                                Icons.arrow_upward,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Transfer',
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                    color: Colors.white,
                    padding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Column(
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            color: Colors.red,
                            child: Icon(
                              Icons.card_travel,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'My Card',
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                    color: Colors.white,
                    padding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Column(
                        children: [
                          Container(
                            width: 25,
                            height: 25,
                            color: Colors.red,
                            child: Icon(
                              Icons.signal_cellular_4_bar,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Expenses',
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Wrap(
                  alignment: WrapAlignment.end,
                  direction: Axis.vertical,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Quick Access',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 140.0,
                          ),
                          child: Icon(Icons.edit, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 50,
                        width: 45,
                        color: Colors.white,
                        child: Icon(
                          Icons.book,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Statement',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 50,
                        width: 45,
                        color: Colors.white,
                        child: Icon(
                          Icons.inventory,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Re-invest',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 50,
                        width: 45,
                        color: Colors.white,
                        child: Icon(
                          Icons.fingerprint,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Authenticate',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 50,
                        width: 45,
                        color: Colors.white,
                        child: Icon(
                          Icons.monetization_on,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Currency\n Exchange',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Text(
              'News and promo',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                  height: 90,
                  width: 80,
                  color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:20.0 ),
                    child: Row(
                      children: [
                        Icon(Icons.person, size: 60, color: Colors.white,),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 20.0)),
                        Text('Get \$12 free!', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),

                      ],
                    ),
                  )),
            ),
          ),
           
        ],
      ))),

    );
  }
}
