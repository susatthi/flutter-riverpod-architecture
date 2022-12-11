import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'entity/user.dart';
import 'entity/user_input_data.dart';

/// ユーザープロバイダー
final userProvider = StreamProvider(
  (ref) => ref.watch(userRepositoryProvider).userChanges(),
);

/// ユーザーリポジトリプロバイダー
final userRepositoryProvider = Provider<UserRepository>(
  (ref) => throw UnimplementedError('Provider was not initialized'),
);

/// ユーザーリポジトリ
abstract class UserRepository {
  /// ユーザーを返す
  Stream<User?> userChanges();

  /// ユーザーを更新する
  Future<void> updateUser(UserInputData inputData);
}
