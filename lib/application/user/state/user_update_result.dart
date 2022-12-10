import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 更新結果
final userUpdateResultProvider = StateProvider<AsyncValue<void>>(
  (_) => const AsyncValue.data(null),
);
