import 'package:flutter/material.dart';
import 'package:formz/formz.dart';

import 'form_input_error.dart';

class EmailField extends StatelessWidget {
  const EmailField({
    super.key,
    required this.controller,
    this.errorText,
    this.onChanged,
  });

  final TextEditingController controller;
  final String? errorText;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'メールアドレス',
        errorText: errorText,
      ),
      onChanged: onChanged,
    );
  }
}

/// メール入力制御
class EmailInput extends FormzInput<String, FromInputError> {
  const EmailInput.pure() : super.pure('');
  const EmailInput.dirty({String value = ''}) : super.dirty(value);

  RegExp get _emailRegExp => RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+');

  @override
  FromInputError? validator(String value) {
    if (value.isEmpty) return FromInputError.empty;
    if (value.length < 3) return FromInputError.tooShort;
    if (!_emailRegExp.hasMatch(value)) return FromInputError.invalidFormat;
    return null;
  }
}
