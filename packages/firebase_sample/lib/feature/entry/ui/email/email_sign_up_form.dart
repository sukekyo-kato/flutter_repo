import 'package:firebase_sample/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'component/email_input.dart';
import 'component/passwd_input.dart';

part 'email_sign_up_form.freezed.dart';
part 'email_sign_up_form.g.dart';

/// フォーム状態
@riverpod
class _SignUpFormState extends _$SignUpFormState {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwdController = TextEditingController();
  final TextEditingController confirmPasswdController = TextEditingController();

  @override
  _SignUpFormValues build() {
    return _SignUpFormValues.empty();
  }

  void updateEmail() {
    state = state.copyWith(
      email: EmailInput.dirty(value: emailController.text),
    );
  }

  void updatePasswd() {
    state = state.copyWith(
      passwd: NewPasswdInput.dirty(value: passwdController.text),
    );
  }

  void updateConfirmPasswd() {
    state = state.copyWith(
      confirmPasswd: ConfirmPasswdInput.dirty(
        passwd: passwdController.text,
        confirm: confirmPasswdController.text,
      ),
    );
  }

  void submit() {
    // TODO:
  }
}

/// フォーム入力情報
@freezed
class _SignUpFormValues with _$_SignUpFormValues {
  const _SignUpFormValues._();
  const factory _SignUpFormValues({
    required EmailInput email,
    required NewPasswdInput passwd,
    required ConfirmPasswdInput confirmPasswd,
  }) = __SignUpFormValues;

  factory _SignUpFormValues.empty() => _SignUpFormValues(
        email: EmailInput.pure(),
        passwd: NewPasswdInput.pure(),
        confirmPasswd: ConfirmPasswdInput.pure(),
      );
}

/// Eメールログインフォーム
class EmailSignUpForm extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mail = ref.watch(_signUpFormStateProvider).email;
    final passwd = ref.watch(_signUpFormStateProvider).passwd;
    final confirmPasswd = ref.watch(_signUpFormStateProvider).confirmPasswd;
    final state = ref.watch(_signUpFormStateProvider.notifier);
    // 決定ボタンを押せるか
    final canSubmit = <FormzInput>[mail, passwd, confirmPasswd]
        .every((formz) => formz.isValid);

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
          hint: '英数字6字以上',
          onChanged: (value) {
            logger.d(value);
            state.updatePasswd();
          },
        ),
        PasswdField(
          controller: state.confirmPasswdController,
          errorText: confirmPasswd.displayError?.name,
          label: '確認用パスワード',
          onChanged: (value) {
            logger.d(value);
            state.updateConfirmPasswd();
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
