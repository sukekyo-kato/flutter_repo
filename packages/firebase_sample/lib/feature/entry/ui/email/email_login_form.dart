import 'package:firebase_sample/feature/entry/ui/email/component/passwd_input.dart';
import 'package:firebase_sample/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'component/email_input.dart';

part 'email_login_form.freezed.dart';
part 'email_login_form.g.dart';

/// フォーム状態
@riverpod
class _FormState extends _$FormState {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwdController = TextEditingController();
  final TextEditingController confirmPasswdController = TextEditingController();

  @override
  _LoginFormValues build() {
    return _LoginFormValues.empty();
  }

  void updateEmail() {
    state = state.copyWith(
      email: EmailInput.dirty(value: emailController.text),
    );
  }

  void updatePasswd() {
    state = state.copyWith(
      passwd: PasswdInput.dirty(value: passwdController.text),
    );
  }

  void submit() {
    // TODO
  }
}

/// フォーム入力情報
@freezed
class _LoginFormValues with _$_LoginFormValues {
  const _LoginFormValues._();
  const factory _LoginFormValues({
    required EmailInput email,
    required PasswdInput passwd,
  }) = __InputFormValues;

  factory _LoginFormValues.empty() => _LoginFormValues(
        email: EmailInput.pure(),
        passwd: PasswdInput.pure(),
      );
}

/// Eメールログインフォーム
class EmailLoginForm extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mail = ref.watch(_formStateProvider).email;
    final passwd = ref.watch(_formStateProvider).passwd;
    final state = ref.watch(_formStateProvider.notifier);
    // 決定ボタンを押せるか
    final canSubmit =
        <FormzInput>[mail, passwd].every((formz) => formz.isValid);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        EmailField(
          controller: state.emailController,
          errorText: mail.displayError?.name,
          onChanged: (value) {
            logger.d(value);
            state.updateEmail();
          },
        ),
        PasswdField(
          controller: state.passwdController,
          errorText: passwd.displayError?.name,
          onChanged: (value) {
            logger.d(value);
            state.updatePasswd();
          },
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              child: Text('キャンセル'),
              onPressed: GoRouter.of(context).pop,
            ),
            ElevatedButton(
              child: Text('決定'),
              onPressed: canSubmit ? state.submit : null,
            ),
          ],
        ),
      ],
    );
  }
}
