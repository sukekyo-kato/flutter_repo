import 'package:firebase_sample/feature/user/use_case/auth/sign_in.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EntryPage extends StatelessWidget {
  const EntryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ログイン画面'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(child: SizedBox()),
            Flexible(
              flex: 2,
              child: _Buttons(),
            ),
          ],
        ),
      ),
    );
  }
}

class _Buttons extends ConsumerWidget {
  const _Buttons();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _SignInButton.anonymous(ref),
        _SignInButton.email(ref),
        _SignInButton.google(ref),
        _SignInButton.apple(ref),
        _SignInButton.openId(ref),
      ],
    );
  }
}

/// サインインボタン
class _SignInButton extends StatelessWidget {
  const _SignInButton({
    required this.onPressed,
    required this.buttonText,
    required this.loading,
  });

  /// 匿名
  factory _SignInButton.anonymous(WidgetRef ref) {
    final provider = signInAnonymousProvider;
    return _SignInButton(
      loading: ref.watch(provider),
      onPressed: ref.read(provider.notifier).execute,
      buttonText: '匿名 ログイン',
    );
  }

  /// Email
  factory _SignInButton.email(WidgetRef ref) {
    final provider = signInEmailProvider;
    return _SignInButton(
      loading: ref.watch(provider),
      onPressed: ref.read(provider.notifier).execute,
      buttonText: 'Email ログイン',
    );
  }

  /// google
  factory _SignInButton.google(WidgetRef ref) {
    final provider = signInGoogleProvider;
    return _SignInButton(
      loading: ref.watch(provider),
      onPressed: ref.read(provider.notifier).execute,
      buttonText: 'Google ログイン',
    );
  }

  /// apple
  factory _SignInButton.apple(WidgetRef ref) {
    final provider = signInAppleProvider;
    return _SignInButton(
      loading: ref.watch(provider),
      onPressed: ref.read(provider.notifier).execute,
      buttonText: 'Apple ログイン',
    );
  }

  /// OpenId Connect: 未定
  factory _SignInButton.openId(WidgetRef ref) {
    final provider = signInOpenIdProvider;
    return _SignInButton(
      loading: ref.watch(provider),
      onPressed: ref.read(provider.notifier).execute,
      buttonText: 'OpenId ログイン',
    );
  }

  final String buttonText;
  final AsyncCallback? onPressed;
  final AsyncValue loading;

  @override
  Widget build(BuildContext context) {
    // 処理中はボタン無効化
    return ElevatedButton(
      onPressed: loading.isLoading ? null : onPressed,
      child: loading.isLoading
          ? CircularProgressIndicator.adaptive()
          : Text(buttonText),
    );
  }
}
