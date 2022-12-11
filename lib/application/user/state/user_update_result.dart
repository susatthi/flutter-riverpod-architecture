import 'package:flutter_riverpod/flutter_riverpod.dart';

/// ユーザー更新結果
final userUpdateResultProvider = StateProvider<AsyncValue<void>>(
  (_) => const AsyncValue.data(null),
);
