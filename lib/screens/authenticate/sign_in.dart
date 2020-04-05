import 'package:brewfirebase/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: RaisedButton(
        onPressed: () async {
          dynamic result = await _auth.signInANon();
          if(result == null) {
            print('Error');
          } else {
            print(result);
            print('Success');
          }
        },
        child: Text('Sign In'),
      ),
    );
  }
}
