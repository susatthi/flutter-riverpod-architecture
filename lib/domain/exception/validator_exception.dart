import 'domain_exception.dart';

/// 入力値検査例外のエラーコード
enum ValidatorExceptionCode {
  /// 必須
  required,
  ;
}

/// 入力値検査例外
class ValidatorException extends DomainException {
  const ValidatorException._({
    required this.code,
    required this.label,
    String? message,
  }) : super(message);

  factory ValidatorException.required({required String label}) =>
      ValidatorException._(
        code: ValidatorExceptionCode.required,
        label: label,
        message: 'Required value.',
      );

  /// エラーコード
  final ValidatorExceptionCode code;

  /// ラベル
  final String label;
}

extension ValidatorExceptionEx on ValidatorException {
  /// ユーザーに表示するエラーメッセージを返す
  String get errorMessage {
    switch (code) {
      case ValidatorExceptionCode.required:
        return '$labelが入力されていません。';
    }
  }
}
