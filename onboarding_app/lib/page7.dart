import 'package:flutter/material.dart';
import 'package:onboarding_app/page8.dart';

class Page7 extends StatelessWidget {
  const Page7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
        child: Center(
          child: ListView(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                color: Colors.red,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(20),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Container(
                                height: 40,
                                width: 280,
                                color: Colors.white,
                                child: Column(
                                  children: [
                                    Row(children: [
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5.0)),
                                      Text(
                                        'Search',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 90.0)),
                                      Icon(Icons.search,
                                          color: Colors.grey, size: 30)
                                    ]),
                                  ],
                                ),
                              ),
                            ))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  height: 50,
                                  width: 45,
                                  color: Colors.deepOrangeAccent,
                                  child: Icon(
                                    Icons.phone_android,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Mobile',
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white),
                              ),
                            ],
                          ),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.0)),
                          Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  height: 50,
                                  width: 45,
                                  color: Colors.deepOrangeAccent,
                                  child: Icon(
                                    Icons.delete,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Bank',
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white),
                              ),
                            ],
                          ),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.0)),
                          Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  height: 50,
                                  width: 45,
                                  color: Colors.deepOrangeAccent,
                                  child: Icon(
                                    Icons.card_giftcard,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Card',
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white),
                              ),
                            ],
                          ),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.0)),
                          Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  height: 50,
                                  width: 45,
                                  color: Colors.deepOrangeAccent,
                                  child: Icon(
                                    Icons.qr_code_scanner,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'QR Scan',
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 25.0, vertical: 10.0),
                child: Wrap(
                    alignment: WrapAlignment.end,
                    direction: Axis.vertical,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Favourite',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 170.0,
                            ),
                            child: Icon(Icons.edit, color: Colors.grey),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
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
                                          height: 30,
                                          width: 35,
                                          color: Colors.red,
                                          child: Icon(
                                            Icons.person,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          'Hailey',
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text('+6597241278',
                                            style: TextStyle(fontSize: 9))
                                      ],
                                    ),
                                  ),
                                )),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
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
                                        height: 30,
                                        width: 35,
                                        color: Colors.red,
                                        child: Icon(
                                          Icons.person,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        'Zayn',
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '+6598241238',
                                        style: TextStyle(fontSize: 9),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
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
                                        width: 30,
                                        height: 35,
                                        color: Colors.red,
                                        child: Icon(
                                          Icons.person,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        'Thomas',
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text('+658225698',
                                          style: TextStyle(fontSize: 9)),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ]),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              child: Text(
                'Services',
                style: TextStyle(fontWeight: FontWeight.bold),
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
                                  Icons.bookmark_add_rounded,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Bills',
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
                                Icons.credit_card,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Apply Credit\n Card',
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
                      padding: EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Column(
                          children: [
                            Container(
                              width: 25,
                              height: 25,
                              color: Colors.red,
                              child: Icon(
                                Icons.people,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Transfer to\n Others',
                              style: TextStyle(fontSize: 10),
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
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        color: Colors.white,
                        padding: EdgeInsets.symmetric(
                            vertical: 25.0, horizontal: 17.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Column(
                            children: [
                              Container(
                                height: 25,
                                width: 25,
                                color: Colors.red,
                                child: Icon(
                                  Icons.lock_clock,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Scheduled\n Transfers',
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
                          EdgeInsets.symmetric(vertical: 20.0, horizontal: 5.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Column(
                          children: [
                            Container(
                              height: 25,
                              width: 25,
                              color: Colors.red,
                              child: Icon(
                                Icons.monetization_on_sharp,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Currency\n Exchange',
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
                      padding: EdgeInsets.symmetric(
                          vertical: 30.0, horizontal: 20.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Column(
                          children: [
                            Container(
                              width: 25,
                              height: 25,
                              color: Colors.red,
                              child: Icon(
                                Icons.house,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Insurance\n Coverage',
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
      
    );
  }
}
