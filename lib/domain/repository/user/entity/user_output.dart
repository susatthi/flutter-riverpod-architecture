import 'package:freezed_annotation/freezed_annotation.dart';

import 'value_object/nickname.dart';

part 'user_output.freezed.dart';

/// ユーザー出力エンティティ
@freezed
class UserOutput with _$UserOutput {
  const factory UserOutput({
    /// ニックネーム
    required Nickname nickname,
  }) = _UserOutput;
  const UserOutput._();
}
