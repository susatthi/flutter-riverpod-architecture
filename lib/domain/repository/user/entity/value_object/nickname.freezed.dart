// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nickname.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Nickname {
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NicknameCopyWith<Nickname> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NicknameCopyWith<$Res> {
  factory $NicknameCopyWith(Nickname value, $Res Function(Nickname) then) =
      _$NicknameCopyWithImpl<$Res, Nickname>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$NicknameCopyWithImpl<$Res, $Val extends Nickname>
    implements $NicknameCopyWith<$Res> {
  _$NicknameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NicknameCopyWith<$Res> implements $NicknameCopyWith<$Res> {
  factory _$$_NicknameCopyWith(
          _$_Nickname value, $Res Function(_$_Nickname) then) =
      __$$_NicknameCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_NicknameCopyWithImpl<$Res>
    extends _$NicknameCopyWithImpl<$Res, _$_Nickname>
    implements _$$_NicknameCopyWith<$Res> {
  __$$_NicknameCopyWithImpl(
      _$_Nickname _value, $Res Function(_$_Nickname) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_Nickname(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Nickname extends _Nickname {
  const _$_Nickname({required this.value}) : super._();

  @override
  final String value;

  @override
  String toString() {
    return 'Nickname(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Nickname &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NicknameCopyWith<_$_Nickname> get copyWith =>
      __$$_NicknameCopyWithImpl<_$_Nickname>(this, _$identity);
}

abstract class _Nickname extends Nickname {
  const factory _Nickname({required final String value}) = _$_Nickname;
  const _Nickname._() : super._();

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_NicknameCopyWith<_$_Nickname> get copyWith =>
      throw _privateConstructorUsedError;
}
