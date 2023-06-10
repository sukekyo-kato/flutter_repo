import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_sample/feature/user/data/firebase/auth.dart';
import 'package:firebase_sample/feature/user/data/google/auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../logger.dart';

part 'sign_in.g.dart';

final AsyncValue signInProcess = AsyncData(null);

/// 匿名サインイン
@riverpod
class SignInAnonymous extends _$SignInAnonymous {
  @override
  Future<void> build() async {}

  Future<void> execute() async {
    state = AsyncLoading();
    state = await AsyncValue.guard(() async {
      await ref.read(firebaseAuthProvider).signInAnonymously();
    });
  }
}

/// メールサインアップ
@riverpod
class SigUpEmail extends _$SigUpEmail {
  @override
  Future<void> build() async {}

  // サインアップする
  Future<void> execute({required String email, required String passwd}) async {
    state = AsyncLoading();
    state = await AsyncValue.guard(() async {
      final user = await ref
          .read(firebaseAuthProvider)
          .createUserWithEmailAndPassword(email: email, password: passwd);
      logger.i('SignInEmail create user: $user');
    });
  }
}

/// メールサインイン
@riverpod
class SignInEmail extends _$SignInEmail {
  @override
  Future<void> build() async {}

  // サインインする
  Future<void> execute({required String email, required String passwd}) async {
    state = AsyncLoading();
    state = await AsyncValue.guard(() async {
      final user = await ref
          .read(firebaseAuthProvider)
          .signInWithEmailAndPassword(email: email, password: passwd);
      logger.i('SignInEmail signIn  user: $user');
    });
  }
}

/// googleサインイン
@riverpod
class SignInGoogle extends _$SignInGoogle {
  @override
  Future<void> build() async {}

  Future<void> execute() async {
    state = AsyncLoading();
    state = await AsyncValue.guard(() async {
      // SHA1登録をすること
      final googleAuth = await ref.read(googleSignInProvider).signIn();
      if (googleAuth == null) {
        throw Exception('no account.');
      }
      final googleCredential =
          ref.read(userCredentialProvider(await googleAuth.authentication));

      final userCredential =
          await FirebaseAuth.instance.signInWithCredential(googleCredential);
      logger.i('SignInGoogle user: ${userCredential.user}');
    });
  }
}

/// appleサインイン
@riverpod
class SignInApple extends _$SignInApple {
  @override
  Future<void> build() async {}

  Future<void> execute() async {}
}

/// OpenIdサインイン
@riverpod
class SignInOpenId extends _$SignInOpenId {
  @override
  Future<void> build() async {}

  Future<void> execute() async {}
}
