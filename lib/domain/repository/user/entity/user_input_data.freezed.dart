// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_input_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserInputData {
  /// ニックネーム
  Nickname get nickname => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserInputDataCopyWith<UserInputData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInputDataCopyWith<$Res> {
  factory $UserInputDataCopyWith(
          UserInputData value, $Res Function(UserInputData) then) =
      _$UserInputDataCopyWithImpl<$Res, UserInputData>;
  @useResult
  $Res call({Nickname nickname});

  $NicknameCopyWith<$Res> get nickname;
}

/// @nodoc
class _$UserInputDataCopyWithImpl<$Res, $Val extends UserInputData>
    implements $UserInputDataCopyWith<$Res> {
  _$UserInputDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
  }) {
    return _then(_value.copyWith(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as Nickname,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NicknameCopyWith<$Res> get nickname {
    return $NicknameCopyWith<$Res>(_value.nickname, (value) {
      return _then(_value.copyWith(nickname: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserInputDataCopyWith<$Res>
    implements $UserInputDataCopyWith<$Res> {
  factory _$$_UserInputDataCopyWith(
          _$_UserInputData value, $Res Function(_$_UserInputData) then) =
      __$$_UserInputDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Nickname nickname});

  @override
  $NicknameCopyWith<$Res> get nickname;
}

/// @nodoc
class __$$_UserInputDataCopyWithImpl<$Res>
    extends _$UserInputDataCopyWithImpl<$Res, _$_UserInputData>
    implements _$$_UserInputDataCopyWith<$Res> {
  __$$_UserInputDataCopyWithImpl(
      _$_UserInputData _value, $Res Function(_$_UserInputData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
  }) {
    return _then(_$_UserInputData(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as Nickname,
    ));
  }
}

/// @nodoc

class _$_UserInputData extends _UserInputData {
  const _$_UserInputData({required this.nickname}) : super._();

  /// ニックネーム
  @override
  final Nickname nickname;

  @override
  String toString() {
    return 'UserInputData(nickname: $nickname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserInputData &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nickname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserInputDataCopyWith<_$_UserInputData> get copyWith =>
      __$$_UserInputDataCopyWithImpl<_$_UserInputData>(this, _$identity);
}

abstract class _UserInputData extends UserInputData {
  const factory _UserInputData({required final Nickname nickname}) =
      _$_UserInputData;
  const _UserInputData._() : super._();

  @override

  /// ニックネーム
  Nickname get nickname;
  @override
  @JsonKey(ignore: true)
  _$$_UserInputDataCopyWith<_$_UserInputData> get copyWith =>
      throw _privateConstructorUsedError;
}
