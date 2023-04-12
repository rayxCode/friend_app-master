import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<User> Login(String email, String password) async {
    UserCredential result =
        await auth.signInWithEmailAndPassword(email: email, password: password);
    final User user = result.user!;

    return user;
  }

  Future<User> SignUp(email, password) async {
      UserCredential result = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      final User user = result.user!;
      return user;
  }
  /**Future<User> SignUp (email, password) async {
    try {
      UserCredential result = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      final User user = result.user!;
      return user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        SnackBar(
          content: const Text("Password is too weak!"),
        );
      } else if (e.code == 'email-already-in-use') {
        SnackBar(
            content: const Text('The account already exists for that email.'));
      }
    } catch (e) {
      SnackBar(content: Text(e.toString()));
    }
  } */
}
