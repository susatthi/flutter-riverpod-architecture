import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'component/dialog.dart';
import 'component/loading.dart';
import 'component/scaffold_messenger.dart';
import 'page/mypage_view_page.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'AsyncValue Sample',
      scaffoldMessengerKey: ref.watch(scaffoldMessengerKeyProvider),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MypageViewPage(),
      debugShowCheckedModeBanner: false,
      builder: (context, child) => Consumer(
        builder: (context, ref, _) {
          final isLoading = ref.watch(overlayLoadingProvider);
          return Navigator(
            key: ref.watch(navigatorKeyProvider),
            onPopPage: (route, dynamic _) => false,
            pages: [
              MaterialPage<Widget>(
                child: Stack(
                  children: [
                    child!,
                    // ローディング状態を見て必要ならローディングを表示する
                    if (isLoading) const OverlayLoading(),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
