import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'entity/user_input.dart';
import 'entity/user_output.dart';

/// ユーザー出力エンティティプロバイダー
final userOutputProvider = StreamProvider(
  (ref) => ref.watch(userRepositoryProvider).userChanges(),
);

/// ユーザーリポジトリプロバイダー
final userRepositoryProvider = Provider<UserRepository>(
  (ref) => throw UnimplementedError('Provider was not initialized'),
);

/// ユーザーリポジトリ
abstract class UserRepository {
  /// ユーザーを返す
  Stream<UserOutput?> userChanges();

  /// ユーザーを更新する
  Future<void> updateUser(UserInput input);
}
