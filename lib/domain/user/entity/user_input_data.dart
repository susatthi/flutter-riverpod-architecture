import 'package:freezed_annotation/freezed_annotation.dart';

import '../../entity/input_data.dart';
import 'value_object/nickname.dart';

part 'user_input_data.freezed.dart';

/// ユーザー入力データ
@freezed
class UserInputData with _$UserInputData implements InputData {
  const factory UserInputData({
    /// ニックネーム
    required Nickname nickname,
  }) = _UserInputData;
  const UserInputData._();

  @override
  void validate() {
    nickname.validate();
  }
}
