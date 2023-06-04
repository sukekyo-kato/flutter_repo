import 'package:firebase_sample/feature/user/data/firebase/auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_in.g.dart';

final AsyncValue signInProcess = AsyncData(null);

/// 匿名サインイン
@riverpod
class SignInAnonymous extends _$SignInAnonymous {
  @override
  FutureOr<void> build() {}

  Future<void> execute() async {
    state = AsyncLoading();
    state = await AsyncValue.guard(() async {
      await ref.read(firebaseAuthProvider).signInAnonymously();
    });
  }
}

/// メールサインイン
@riverpod
class SignInEmail extends _$SignInEmail {
  @override
  FutureOr<void> build() {}

  Future<void> execute() async {}
}

/// googleサインイン
@riverpod
class SignInGoogle extends _$SignInGoogle {
  @override
  FutureOr<void> build() {}

  Future<void> execute() async {}
}

/// appleサインイン
@riverpod
class SignInApple extends _$SignInApple {
  @override
  FutureOr<void> build() {}

  Future<void> execute() async {}
}

/// OpenIdサインイン
@riverpod
class SignInOpenId extends _$SignInOpenId {
  @override
  FutureOr<void> build() {}

  Future<void> execute() async {}
}
