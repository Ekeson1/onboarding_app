
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'homepage.dart';
import 'package:http/http.dart' as http;

import 'loginform.dart';
import 'power.dart';

var loginBefore = false;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final newPref = await SharedPreferences.getInstance();
  var hasEmail = newPref.getString('email');
  if (hasEmail == null) {
    loginBefore = false;
  } else {
    loginBefore = true;
    }

  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  double _percentage = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ali Express',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: loginBefore ? Power() : LoginForm(),
    );
  }
}
