import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/repository/user/entity/user_input_data.dart';
import '../../domain/repository/user/entity/value_object/nickname.dart';
import '../../domain/repository/user/user_repository.dart';
import 'state/user_update_result.dart';

final userServiceProvider = Provider(
  UserService.new,
);

/// ユーザーサービス
class UserService {
  const UserService(this.ref);

  final Ref ref;

  /// ユーザーを更新する
  Future<void> update({
    required String nickname,
  }) async {
    final notifier = ref.read(userUpdateResultProvider.notifier);
    notifier.state = const AsyncValue.loading();
    notifier.state = await AsyncValue.guard(() async {
      // 受け取った情報をInputDataに詰め直してリポジトリのメソッドを実行する
      await ref.read(userRepositoryProvider).updateUser(
            UserInputData(
              nickname: Nickname(value: nickname),
            ),
          );
    });
  }
}
