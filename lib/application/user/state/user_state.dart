import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/repository/user/user_repository.dart';

part 'user_state.freezed.dart';

/// ユーザー出力エンティティが更新されたらユーザー状態に変換して返す
final userStateProvider = FutureProvider(
  (ref) async {
    final user = await ref.watch(userOutputProvider.future);
    if (user == null) {
      return null;
    }

    return UserState(
      nickname: user.nickname.value,
    );
  },
);

/// ユーザー状態
@freezed
class UserState with _$UserState {
  const factory UserState({
    /// ニックネーム
    required String nickname,
  }) = _UserState;
  const UserState._();
}
