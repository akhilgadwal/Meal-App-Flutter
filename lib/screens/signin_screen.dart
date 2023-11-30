import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mealapp/connection.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  Future<UserCredential?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await GoogleSignIn().signIn();
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount!.authentication;

      final OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      return await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (error) {
      print("Google Sign-In Error: $error");
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ConnectivityWrapper(
      child: Center(
        child: ElevatedButton(
          onPressed: () async {
            await signInWithGoogle();
          },
          child: const Text("Sign in with Google"),
        ),
      ),
    );
  }
}
