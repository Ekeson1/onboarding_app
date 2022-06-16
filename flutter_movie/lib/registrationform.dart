import 'dart:convert';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'loginform.dart';

class RegistrationForm extends StatefulWidget {
  RegistrationForm({Key? key}) : super(key: key);

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  TextEditingController registerName = TextEditingController();
  TextEditingController registerPhone = TextEditingController();
  TextEditingController registerEmail = TextEditingController();
  TextEditingController registerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Registration Form'),
        ),
        body: Form(
          key: _key,
          child: ListView(
            padding: EdgeInsets.all(16),
            children: [
              TextFormField(
                  controller: registerName,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    labelText: 'Name',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty)
                      return 'Field is required.';
                    // String pattern =  r'^(?=.*?[A-Z])(?=.*?[a-z]);
                    // if (!RegExp(pattern).hasMatch(value))
                    //   return 'Invalid Email Address Format.';
                    // return null;
                  }),
              SizedBox(
                height: 32,
              ),
              TextFormField(
                  controller: registerPhone,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    labelText: 'Phone',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty)
                      return 'Field is required.';
                    // String pattern = r'\0+9';
                    // if (!RegExp(pattern).hasMatch(value))
                    //   return 'Invalid Phone Number Format.';
                    // return null;
                  }),
              SizedBox(
                height: 32,
              ),
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
                    // String pattern = r'\w+@\w+\.\w+';
                    // if (!RegExp(pattern).hasMatch(value))
                    //   return 'Invalid Email Address Format.';
                    // return null;
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
                    // String pattern =
                    //     r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!#@\$&*~]).{8,}$';
                    // if (!RegExp(pattern).hasMatch(value))
                    //   return '''Password must be at least 8 characters,
                    //  including an uppercase letter, number and symbol.''';
                    // return null;
                  }),
              SizedBox(
                height: 32,
              ),
              ElevatedButton(
                child: Text('Submit'),
                onPressed: () {
                  if (_key.currentState!.validate()) {
                    (_key.currentState!.save());
                    print('Form Submitted');
                    sendToServer();
                  }
                },
              ),
            ],
          ),
        ),
      );

  sendToServer() async {
    Map data = {
      "name": registerName.text,
      "phone": registerPhone.text,
      "email": registerEmail.text,
      "password": registerPassword.text
    };
    print(data);
    var url = Uri.parse('http://159.65.21.42:9000/register');
    var response = await http.post(url, body: data);
    var userresponse = json.decode(response.body);

    if (userresponse.toString().contains("error")) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Error registering user")));
    } else {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) => LoginForm()));
    }
    print(userresponse);
  }
}
