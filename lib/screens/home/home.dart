import 'package:brewfirebase/model/brew.dart';
import 'package:brewfirebase/screens/home/brewlist.dart';
import 'package:brewfirebase/screens/home/setting_form.dart';
import 'package:brewfirebase/services/auth.dart';
import 'package:brewfirebase/services/database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {

    void _showSettingPanel() {
      showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              padding: EdgeInsets.all(20),
              child: SettingsForm(),
            );
          }
      );
    }

    return StreamProvider<List<Brew>>.value(
      value: DatabaseService().brews,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Brew Crew'),
          actions: <Widget>[
            FlatButton.icon(
                onPressed: () {
                  _auth.signOut();
                },
                icon: Icon(Icons.person),
                label: Text('Logout')
            ),
            FlatButton.icon(
                onPressed: () {
                  _showSettingPanel();
                },
                icon: Icon(Icons.settings),
                label: Text('Setting'))
          ],
        ),
        body: BrewList(),
      ),
    );
  }
}