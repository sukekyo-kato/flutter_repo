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
