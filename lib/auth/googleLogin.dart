import 'dart:developer';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_options.dart';

Future<User?> signInGoogle() async {
  // 구글 로그인
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
  if (googleUser == null) {
    return null;
  }
  log('success!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!');
  final GoogleSignInAuthentication googleAuth =
  await googleUser.authentication;
  // Firebase로 인증
  final OAuthCredential credential = GoogleAuthProvider.credential(
    accessToken: googleAuth.accessToken,
    idToken: googleAuth.idToken,
  );
  UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
  return userCredential.user;
}

void signOutGoogle() async{
  await GoogleSignIn().signOut();
}
