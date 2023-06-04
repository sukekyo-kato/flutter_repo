// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_sign_up_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$_SignUpFormValues {
  EmailInput get email => throw _privateConstructorUsedError;
  NewPasswdInput get passwd => throw _privateConstructorUsedError;
  ConfirmPasswdInput get confirmPasswd => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$SignUpFormValuesCopyWith<_SignUpFormValues> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SignUpFormValuesCopyWith<$Res> {
  factory _$SignUpFormValuesCopyWith(
          _SignUpFormValues value, $Res Function(_SignUpFormValues) then) =
      __$SignUpFormValuesCopyWithImpl<$Res, _SignUpFormValues>;
  @useResult
  $Res call(
      {EmailInput email,
      NewPasswdInput passwd,
      ConfirmPasswdInput confirmPasswd});
}

/// @nodoc
class __$SignUpFormValuesCopyWithImpl<$Res, $Val extends _SignUpFormValues>
    implements _$SignUpFormValuesCopyWith<$Res> {
  __$SignUpFormValuesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? passwd = null,
    Object? confirmPasswd = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      passwd: null == passwd
          ? _value.passwd
          : passwd // ignore: cast_nullable_to_non_nullable
              as NewPasswdInput,
      confirmPasswd: null == confirmPasswd
          ? _value.confirmPasswd
          : confirmPasswd // ignore: cast_nullable_to_non_nullable
              as ConfirmPasswdInput,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$__SignUpFormValuesCopyWith<$Res>
    implements _$SignUpFormValuesCopyWith<$Res> {
  factory _$$__SignUpFormValuesCopyWith(_$__SignUpFormValues value,
          $Res Function(_$__SignUpFormValues) then) =
      __$$__SignUpFormValuesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailInput email,
      NewPasswdInput passwd,
      ConfirmPasswdInput confirmPasswd});
}

/// @nodoc
class __$$__SignUpFormValuesCopyWithImpl<$Res>
    extends __$SignUpFormValuesCopyWithImpl<$Res, _$__SignUpFormValues>
    implements _$$__SignUpFormValuesCopyWith<$Res> {
  __$$__SignUpFormValuesCopyWithImpl(
      _$__SignUpFormValues _value, $Res Function(_$__SignUpFormValues) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? passwd = null,
    Object? confirmPasswd = null,
  }) {
    return _then(_$__SignUpFormValues(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      passwd: null == passwd
          ? _value.passwd
          : passwd // ignore: cast_nullable_to_non_nullable
              as NewPasswdInput,
      confirmPasswd: null == confirmPasswd
          ? _value.confirmPasswd
          : confirmPasswd // ignore: cast_nullable_to_non_nullable
              as ConfirmPasswdInput,
    ));
  }
}

/// @nodoc

class _$__SignUpFormValues extends __SignUpFormValues {
  const _$__SignUpFormValues(
      {required this.email, required this.passwd, required this.confirmPasswd})
      : super._();

  @override
  final EmailInput email;
  @override
  final NewPasswdInput passwd;
  @override
  final ConfirmPasswdInput confirmPasswd;

  @override
  String toString() {
    return '_SignUpFormValues(email: $email, passwd: $passwd, confirmPasswd: $confirmPasswd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__SignUpFormValues &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.passwd, passwd) || other.passwd == passwd) &&
            (identical(other.confirmPasswd, confirmPasswd) ||
                other.confirmPasswd == confirmPasswd));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, passwd, confirmPasswd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$__SignUpFormValuesCopyWith<_$__SignUpFormValues> get copyWith =>
      __$$__SignUpFormValuesCopyWithImpl<_$__SignUpFormValues>(
          this, _$identity);
}

abstract class __SignUpFormValues extends _SignUpFormValues {
  const factory __SignUpFormValues(
      {required final EmailInput email,
      required final NewPasswdInput passwd,
      required final ConfirmPasswdInput confirmPasswd}) = _$__SignUpFormValues;
  const __SignUpFormValues._() : super._();

  @override
  EmailInput get email;
  @override
  NewPasswdInput get passwd;
  @override
  ConfirmPasswdInput get confirmPasswd;
  @override
  @JsonKey(ignore: true)
  _$$__SignUpFormValuesCopyWith<_$__SignUpFormValues> get copyWith =>
      throw _privateConstructorUsedError;
}
