import '../../domain/exception/database_exception.dart';

extension ObjectEx on Object {
  /// エラーメッセージを返す
  String errorMessage() {
    if (this is DatabaseException) {
      final error = this as DatabaseException;
      switch (error.code) {
        case DatabaseExceptionCode.updateFailed:
          return '更新できませんでした。';
      }
    }
    return toString();
  }
}
