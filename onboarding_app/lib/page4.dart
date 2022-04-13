import 'package:flutter/material.dart';
import 'package:onboarding_app/base.dart';
import 'package:onboarding_app/page5.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  get passwordTextController => null;

  get nameTextController => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: ListView(
          children: [
            Column(
              children: [
                Padding(padding: EdgeInsets.all(20.0)),
                Text(
                  'ACP',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 15.0)),
                Text(
                  'Welcome Back!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 40.0),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Container(
                    height: 40,
                    width: 250,
                    color: Colors.white,
                    child: TextFormField(
                      controller: nameTextController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'Email Address',
                        contentPadding: EdgeInsets.symmetric(horizontal: 40.0),
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 3.0)),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Container(
                    height: 40,
                    width: 250,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: passwordTextController,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 40.0),
                            ),
                          ),
                        ),
                        Icon(Icons.lock),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 20.0)),
                    Text('Forgort Password?'),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 40.0)),
                    Icon(
                      Icons.camera_indoor_rounded,
                      color: Colors.red,
                    ),
                  ],
                ),
                SizedBox(height: 50.0),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    height: 40,
                    width: 250,
                    color: Colors.red,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Base(),
                            ));
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Container(
                    height: 40,
                    width: 250,
                    color: Colors.brown,
                    child: Text('Not you?',
                        style: TextStyle(
                          color: Colors.white,
                        )),
                    padding:
                        EdgeInsets.symmetric(horizontal: 85.0, vertical: 10.0),
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 5.0)),
                Text(
                  "Don't have an account? -Sign Up",
                  style: TextStyle(fontSize: 11.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
