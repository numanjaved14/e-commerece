import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class User {
   final String uid;
   User({required this.uid});

}

class AuthBase {

  User _userFormFirebase(user) {
    return User(uid: user.uid);
  }


  Future<User> registerWithEmailAndPassword(
    {
      required String email,
     required String password
      
      }
      ) async {
    
    final authResult = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);

    return _userFormFirebase(authResult.user);
  }

  Future<User> loginWithEmailAndPassword(
    {required String email,
     required String password
     }) async {
    //  FirebaseAuth;
    final authResult = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);

    return _userFormFirebase(authResult.user);
  }


  Future<void> logout() async {
    var FirebaseAuth;
    await FirebaseAuth.instance.signOut();
  }
}
