import 'package:brewfirebase/model/brew.dart';
import 'package:brewfirebase/screens/home/brew_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BrewList extends StatefulWidget {
  @override
  _BrewListState createState() => _BrewListState();
}

class _BrewListState extends State<BrewList> {
  @override
  Widget build(BuildContext context) {

    final brews = Provider.of<List<Brew>>(context);
    brews.forEach((brew) {
      print(brew.name);
      print(brew.sugars);
      print(brew.strength);
    });

    return ListView.builder(
        itemCount: brews.length,
        itemBuilder: (context, index) {
          return BrewCard(
            brew: brews[index],
          );
        }
    );
  }
}
