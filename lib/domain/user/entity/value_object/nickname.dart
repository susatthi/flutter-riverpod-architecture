import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../entity/value_object.dart';
import '../../../exception/validator_exception.dart';

part 'nickname.freezed.dart';

/// ニックネーム
@freezed
class Nickname with _$Nickname implements ValueObject {
  const factory Nickname({
    required String value,
  }) = _Nickname;
  const Nickname._();

  static const label = 'ニックネーム';

  @override
  void validate() {
    if (value.isEmpty) {
      throw ValidatorException.required(label: label);
    }
  }
}
