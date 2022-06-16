import 'dart:convert';


import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'power.dart';
import 'registrationform.dart';

class LoginForm extends StatefulWidget {
  LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  TextEditingController registerEmail = TextEditingController();
  TextEditingController registerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Login Form'),
        ),
        body: Form(
          key: _key,
          child: ListView(
            padding: EdgeInsets.all(16),
            children: [
              TextFormField(
                  controller: registerEmail,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.mail),
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty)
                      return 'Field is required.';
                    String pattern = r'\w+@\w+\.\w+';
                    if (!RegExp(pattern).hasMatch(value))
                      return 'Invalid Email Address Format.';
                    return null;
                  }),
              SizedBox(
                height: 32,
              ),
              TextFormField(
                  controller: registerPassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty)
                      return 'Field is required.';
                    String pattern =
                        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!#@\$&*~]).{8,}$';
                    if (!RegExp(pattern).hasMatch(value))
                      return '''Password must be at least 8 characters,
                     including an uppercase letter, number and symbol.''';
                    return null;
                  }),
              SizedBox(
                height: 32,
              ),
              ElevatedButton(
                child: Text('Submit'),
                onPressed: () async{
                  if (_key.currentState!.validate()) {
                    (_key.currentState!.save());
                    print('Form Submitted');
              final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
                  sharedPreferences.setString('email', registerEmail.text);
                    sendToServer();
                  }
                },
              ),
              TextButton(
                  child: Text('Register Here'),
                  onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                RegistrationForm()));
                    })
            ],
          ),
        ),
      );
  sendToServer() async {
    Map data = {"email": registerEmail.text, "password": registerPassword.text};
    print(data);
    var url = Uri.parse('http://159.65.21.42:9000/login');
    var response = await http.post(url, body: data);
    var userresponse = json.decode(response.body);

    if (userresponse.toString().contains("error")) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Error logingin user")));
    } else {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) => Power()));
    }
    print(userresponse);
  }
}

