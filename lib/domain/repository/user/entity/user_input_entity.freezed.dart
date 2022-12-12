// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_input_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserInputEntity {
  /// ニックネーム
  Nickname get nickname => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserInputEntityCopyWith<UserInputEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInputEntityCopyWith<$Res> {
  factory $UserInputEntityCopyWith(
          UserInputEntity value, $Res Function(UserInputEntity) then) =
      _$UserInputEntityCopyWithImpl<$Res, UserInputEntity>;
  @useResult
  $Res call({Nickname nickname});

  $NicknameCopyWith<$Res> get nickname;
}

/// @nodoc
class _$UserInputEntityCopyWithImpl<$Res, $Val extends UserInputEntity>
    implements $UserInputEntityCopyWith<$Res> {
  _$UserInputEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$_UserInputEntityCopyWith<$Res>
    implements $UserInputEntityCopyWith<$Res> {
  factory _$$_UserInputEntityCopyWith(
          _$_UserInputEntity value, $Res Function(_$_UserInputEntity) then) =
      __$$_UserInputEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Nickname nickname});

  @override
  $NicknameCopyWith<$Res> get nickname;
}

/// @nodoc
class __$$_UserInputEntityCopyWithImpl<$Res>
    extends _$UserInputEntityCopyWithImpl<$Res, _$_UserInputEntity>
    implements _$$_UserInputEntityCopyWith<$Res> {
  __$$_UserInputEntityCopyWithImpl(
      _$_UserInputEntity _value, $Res Function(_$_UserInputEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
  }) {
    return _then(_$_UserInputEntity(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as Nickname,
    ));
  }
}

/// @nodoc

class _$_UserInputEntity implements _UserInputEntity {
  const _$_UserInputEntity({required this.nickname});

  /// ニックネーム
  @override
  final Nickname nickname;

  @override
  String toString() {
    return 'UserInputEntity(nickname: $nickname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserInputEntity &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nickname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserInputEntityCopyWith<_$_UserInputEntity> get copyWith =>
      __$$_UserInputEntityCopyWithImpl<_$_UserInputEntity>(this, _$identity);
}

abstract class _UserInputEntity implements UserInputEntity {
  const factory _UserInputEntity({required final Nickname nickname}) =
      _$_UserInputEntity;

  @override

  /// ニックネーム
  Nickname get nickname;
  @override
  @JsonKey(ignore: true)
  _$$_UserInputEntityCopyWith<_$_UserInputEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
