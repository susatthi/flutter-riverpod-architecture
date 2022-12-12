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
