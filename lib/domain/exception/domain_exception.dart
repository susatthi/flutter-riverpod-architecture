import 'database_exception.dart';
import 'validator_exception.dart';

/// 基底ドメイン例外
///
/// ドメイン層が定義する例外の基底クラス
abstract class DomainException implements Exception {
  const DomainException(this.message);

  final Object? message;

  @override
  String toString() {
    final message = this.message;
    if (message == null) {
      return 'DomainException';
    }
    return 'DomainException: $message';
  }
}

extension DomainExceptionEx on DomainException {
  /// ユーザーに表示するエラーメッセージを返す
  String get errorMessage {
    if (this is DatabaseException) {
      return (this as DatabaseException).errorMessage;
    }
    if (this is ValidatorException) {
      return (this as ValidatorException).errorMessage;
    }
    return toString();
  }
}
