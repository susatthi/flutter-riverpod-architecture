import 'domain_exception.dart';

/// データベース例外のエラーコード
enum DatabaseExceptionCode {
  /// 更新失敗
  updateFailed,
  ;
}

/// データベース例外
class DatabaseException extends DomainException {
  const DatabaseException._({
    required this.code,
    required this.label,
    String? message,
  }) : super(message);

  factory DatabaseException.updateFailed({required String label}) =>
      DatabaseException._(
        code: DatabaseExceptionCode.updateFailed,
        label: label,
        message: 'Faild update.',
      );

  /// エラーコード
  final DatabaseExceptionCode code;

  /// ラベル
  final String label;
}

extension DatabaseExceptionEx on DatabaseException {
  /// ユーザーに表示するエラーメッセージを返す
  String get errorMessage {
    switch (code) {
      case DatabaseExceptionCode.updateFailed:
        return '$labelを更新できませんでした。';
    }
  }
}
