import 'package:freezed_annotation/freezed_annotation.dart';

import 'value_object/nickname.dart';

part 'user_input.freezed.dart';

/// ユーザー入力エンティティ
@freezed
class UserInput with _$UserInput {
  const factory UserInput({
    /// ニックネーム
    required Nickname nickname,
  }) = _UserInput;
}
