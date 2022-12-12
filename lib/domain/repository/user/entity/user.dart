import 'package:freezed_annotation/freezed_annotation.dart';

import 'value_object/nickname.dart';

part 'user.freezed.dart';

/// ユーザーエンティティ
@freezed
class User with _$User {
  const factory User({
    /// ニックネーム
    required Nickname nickname,
  }) = _User;
  const User._();
}
