import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth.g.dart';

@Riverpod(keepAlive: true)
GoogleSignIn googleSignIn(GoogleSignInRef ref) {
  return GoogleSignIn();
}

@riverpod
OAuthCredential userCredential(
    UserCredentialRef ref, GoogleSignInAuthentication auth) {
  return GoogleAuthProvider.credential(
      accessToken: auth.accessToken, idToken: auth.idToken);
}
