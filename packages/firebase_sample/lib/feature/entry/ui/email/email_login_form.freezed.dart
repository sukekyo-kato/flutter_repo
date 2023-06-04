// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_login_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$_LoginFormValues {
  EmailInput get email => throw _privateConstructorUsedError;
  PasswdInput get passwd => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$LoginFormValuesCopyWith<_LoginFormValues> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoginFormValuesCopyWith<$Res> {
  factory _$LoginFormValuesCopyWith(
          _LoginFormValues value, $Res Function(_LoginFormValues) then) =
      __$LoginFormValuesCopyWithImpl<$Res, _LoginFormValues>;
  @useResult
  $Res call({EmailInput email, PasswdInput passwd});
}

/// @nodoc
class __$LoginFormValuesCopyWithImpl<$Res, $Val extends _LoginFormValues>
    implements _$LoginFormValuesCopyWith<$Res> {
  __$LoginFormValuesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? passwd = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      passwd: null == passwd
          ? _value.passwd
          : passwd // ignore: cast_nullable_to_non_nullable
              as PasswdInput,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$__InputFormValuesCopyWith<$Res>
    implements _$LoginFormValuesCopyWith<$Res> {
  factory _$$__InputFormValuesCopyWith(
          _$__InputFormValues value, $Res Function(_$__InputFormValues) then) =
      __$$__InputFormValuesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EmailInput email, PasswdInput passwd});
}

/// @nodoc
class __$$__InputFormValuesCopyWithImpl<$Res>
    extends __$LoginFormValuesCopyWithImpl<$Res, _$__InputFormValues>
    implements _$$__InputFormValuesCopyWith<$Res> {
  __$$__InputFormValuesCopyWithImpl(
      _$__InputFormValues _value, $Res Function(_$__InputFormValues) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? passwd = null,
  }) {
    return _then(_$__InputFormValues(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      passwd: null == passwd
          ? _value.passwd
          : passwd // ignore: cast_nullable_to_non_nullable
              as PasswdInput,
    ));
  }
}

/// @nodoc

class _$__InputFormValues extends __InputFormValues {
  const _$__InputFormValues({required this.email, required this.passwd})
      : super._();

  @override
  final EmailInput email;
  @override
  final PasswdInput passwd;

  @override
  String toString() {
    return '_LoginFormValues(email: $email, passwd: $passwd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__InputFormValues &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.passwd, passwd) || other.passwd == passwd));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, passwd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$__InputFormValuesCopyWith<_$__InputFormValues> get copyWith =>
      __$$__InputFormValuesCopyWithImpl<_$__InputFormValues>(this, _$identity);
}

abstract class __InputFormValues extends _LoginFormValues {
  const factory __InputFormValues(
      {required final EmailInput email,
      required final PasswdInput passwd}) = _$__InputFormValues;
  const __InputFormValues._() : super._();

  @override
  EmailInput get email;
  @override
  PasswdInput get passwd;
  @override
  @JsonKey(ignore: true)
  _$$__InputFormValuesCopyWith<_$__InputFormValues> get copyWith =>
      throw _privateConstructorUsedError;
}
