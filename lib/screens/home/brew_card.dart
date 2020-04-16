import 'package:brewfirebase/model/brew.dart';
import 'package:brewfirebase/screens/home/brewlist.dart';
import 'package:flutter/material.dart';

class BrewCard extends StatelessWidget {

  final Brew brew;
  BrewCard({this.brew});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8),
      child: Card(
        margin: EdgeInsets.all(10),
        child: ListTile(
          leading: CircleAvatar(
            radius: 24,
            backgroundColor: Colors.brown[brew.strength],
          ),
          title: Text(brew.name),
          subtitle: Text(brew.sugars),
          
        ),
      ),
    );
  }
}

