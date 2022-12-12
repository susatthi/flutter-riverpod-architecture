import 'package:freezed_annotation/freezed_annotation.dart';

import 'value_object/nickname.dart';

part 'user_input_entity.freezed.dart';

/// ユーザー入力エンティティ
@freezed
class UserInputEntity with _$UserInputEntity {
  const factory UserInputEntity({
    /// ニックネーム
    required Nickname nickname,
  }) = _UserInputEntity;
}
