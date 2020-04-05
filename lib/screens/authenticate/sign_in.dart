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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: RaisedButton(
          onPressed: () async {
            dynamic result = await _auth.signInANon();
            if(result == null) {
              print('Error');
            } else {
              print(result.uid);
              print('Successfully Signed In');
            }
          },
          child: Text('Sign In'),
        ),
      ),
    );
  }
}
