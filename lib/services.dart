import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

Future<void> register({
  required String username,
  required String email,
  required String password,
  required String confirmpassword,
  required BuildContext context,
}) async {
  try {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("user created successfully")));
  } catch (e) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}

Future<void> loginn({
  required String email,
  required String password,
  required BuildContext context,
}) async {
  try {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("login successfull")));
  } catch (e) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}

Future<void> forgotpass({
  required String Email,
  required BuildContext context,
}) async {
  try {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: Email);
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("password reset link sent")));
  } catch (e) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}
