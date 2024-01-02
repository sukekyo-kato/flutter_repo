import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_in.g.dart';

/// 匿名サインイン
@riverpod
Future<void> signInAnonymous(SignInAnonymousRef ref) async {}

/// メールサインイン
@riverpod
Future<void> signInEmail(SignInEmailRef ref) async {}

/// googleサインイン
@riverpod
Future<void> signInGoogle(SignInGoogleRef ref) async {}

/// appleサインイン
@riverpod
Future<void> signInApple(SignInAppleRef ref) async {}

/// OpenIdサインイン
@riverpod
Future<void> signInOpenId(SignInOpenIdRef ref) async {}
