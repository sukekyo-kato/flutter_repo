import 'package:flutter/material.dart';
import 'package:formz/formz.dart';

import 'form_input_error.dart';

class PasswdField extends StatelessWidget {
  const PasswdField({
    super.key,
    required this.controller,
    this.label = 'パスワード',
    this.hint,
    this.errorText,
    this.onChanged,
  });

  final TextEditingController controller;
  final String? errorText;
  final ValueChanged<String>? onChanged;
  final String label;
  final String? hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        errorText: errorText,
      ),
      onChanged: onChanged,
    );
  }
}

/// パスワード入力制御
class PasswdInput extends FormzInput<String, FromInputError> {
  const PasswdInput.pure() : super.pure('');
  const PasswdInput.dirty({String value = ''}) : super.dirty(value);

  @override
  FromInputError? validator(String value) {
    if (value.isEmpty) return FromInputError.empty;
    return null;
  }
}

/// 新規パスワード入力制御
class NewPasswdInput extends FormzInput<String, FromInputError> {
  const NewPasswdInput.pure() : super.pure('');
  const NewPasswdInput.dirty({String value = ''}) : super.dirty(value);

  RegExp get _passwdRegExp => RegExp(r'^(?=.*[a-z])(?=.*\d).{6,}$');

  @override
  FromInputError? validator(String value) {
    if (value.isEmpty) return FromInputError.empty;
    if (value.length < 6) return FromInputError.tooShort;
    if (!_passwdRegExp.hasMatch(value)) return FromInputError.invalidFormat;
    return null;
  }
}

/// 確認用パスワード入力制御 (Record型)
class ConfirmPasswdInput extends FormzInput<(String, String), FromInputError> {
  const ConfirmPasswdInput.pure() : super.pure(('', ''));

  const ConfirmPasswdInput.dirty({String passwd = '', String confirm = ''})
      : super.dirty((passwd, confirm));

  @override
  FromInputError? validator((String passwd, String confirm) value) {
    return value.$1 == value.$2 ? null : FromInputError.notMatch;
  }
}
