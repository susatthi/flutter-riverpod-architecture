import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'domain/user/user_repository.dart';
import 'infrastructure/memory/user/user_repository.dart';
import 'presentation/app.dart';

void main() {
  runApp(
    ProviderScope(
      overrides: [
        // リポジトリプロバイダーを上書きする
        userRepositoryProvider.overrideWith((ref) {
          final repository = MemoryUserRepository();
          ref.onDispose(repository.dispose);
          return repository;
        }),
      ],
      child: const App(),
    ),
  );
}
