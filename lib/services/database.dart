import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {

  final String uid;
  DatabaseService({this.uid});

  //Reference Collection
  final CollectionReference brewCollection = Firestore.instance.collection('brew');

  Future updateUserData(String sugar, String name, int strength) async {
    return await brewCollection.document(uid).setData({
      'name' : name,
      'sugar' : sugar,
      'strength' : strength,
    });
  }

  //stream
  Stream<QuerySnapshot> get brews {
    return brewCollection.snapshots();
  }
}