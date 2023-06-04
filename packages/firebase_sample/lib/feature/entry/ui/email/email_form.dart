import 'package:firebase_sample/feature/entry/ui/email/email_login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'email_form.g.dart';

/// 入力フォームダイアログ
Future<void> showEmailDialog(BuildContext context) async {
  await showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: _Switch(),
        content: Consumer(
          builder: (context, ref, parent) =>
              ref.watch(_isNewUserProvider)
              ? SizedBox() // TODO
              : EmailLoginForm(),
        ),
      );
    },
  );
}

@riverpod
class _IsNewUser extends _$IsNewUser {
  @override
  bool build() {
    return false;
  }

  void update(bool value) => state = value;
}

class _Switch extends ConsumerWidget {
  const _Switch();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    VoidCallback;
    return SegmentedButton(
        segments: [
          ButtonSegment(label: Text('ログイン'), value: false),
          ButtonSegment(label: Text('新規登録'), value: true)
        ],
        selected: {
          ref.watch(_isNewUserProvider)
        },
        onSelectionChanged: (Set<bool> newSelection) =>
            ref.read(_isNewUserProvider.notifier).update(newSelection.first));
  }
}
