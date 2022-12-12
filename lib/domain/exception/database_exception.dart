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
    String? message,
  }) : super(message);

  factory DatabaseException.updateFailed() => const DatabaseException._(
        code: DatabaseExceptionCode.updateFailed,
        message: 'Faild update.',
      );

  /// エラーコード
  final DatabaseExceptionCode code;
}
