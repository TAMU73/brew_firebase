import 'package:brewfirebase/model/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //Create user object based on firebaseUser
    User _userFromFirebaseUser(FirebaseUser user){
      return user != null ? User(uid: user.uid) : null;
    }

  //auth change user stream
  Stream<User> get user {
    return _auth.onAuthStateChanged
        .map(_userFromFirebaseUser);
  }
  //sign in anonymously
  Future signInANon() async {
    try{
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    } catch(e) {
      print(e.toString());
      return null;
    }
  }

  //Sign Out
  Future signOut() async {
      try {
        return _auth.signOut();
      } catch(e) {
        print(e.toString());
        return null;
      }
  }
}