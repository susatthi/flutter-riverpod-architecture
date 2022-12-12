import 'package:freezed_annotation/freezed_annotation.dart';

part 'nickname.freezed.dart';

/// ニックネーム
@freezed
class Nickname with _$Nickname {
  const factory Nickname({
    required String value,
  }) = _Nickname;
}
