import 'package:brewfirebase/model/user.dart';
import 'package:brewfirebase/screens/authenticate/authenticate.dart';
import 'package:brewfirebase/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    if(user == null){
      return Authenticate();
    } else {
      return Home();
    }
  }
}