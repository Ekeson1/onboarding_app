import 'package:flutter/material.dart';

class CheckOut extends StatefulWidget {
  CheckOut({Key? key}) : super(key: key);

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          child: Center(
        child: ListView(
          children: [
            Column(children: [
              Container(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.arrow_back_ios),
                      Text('Checkout'),
                    ],
                  ),
                ),
              ),
            ]),
            Container(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image(
                      image: AssetImage(
                        'assets/jean1.jpg',
                      ),
                      height: 90,
                      width: 90,
                    ),
                  ),
                  Wrap(
                    direction: Axis.vertical,
                    children: [
                      Text('\$100'),
                      Text('Summer Party Dress'),
                      Text('Quantity 1'),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            )),
            SizedBox(
              height: 20,
              width: 300,
              child: Divider(
                color: Colors.grey.shade400,
              ),
            ),
            Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        'Zoe Ndubueze\nB60 Valencia Estate\nFCT, Nigeria\n+07032912696'),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
              width: 300,
              child: Divider(
                color: Colors.grey.shade400,
              ),
            ),
            Container(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.circle,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.circle,
                    color: Colors.orange,
                  ),
                  Text('4325 6547 9805 1171'),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            )),
            SizedBox(
              height: 20,
              width: 300,
              child: Divider(
                color: Colors.grey.shade400,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Order Summary',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total:'),
                    Text('\$60'),
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Aliexpress Coupons:'),
                    Text(
                      'None Available',
                      style: TextStyle(color: Colors.orange),
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Promo Code:'),
                    Text(
                      'Enter code here',
                      style: TextStyle(color: Colors.orange),
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total:'),
                    Text('\$60'),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
