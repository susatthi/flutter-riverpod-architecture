import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../application/user/state/user_state.dart';
import '../component/async_value_handler.dart';
import 'user_edit_page.dart';

/// マイページ詳細画面
class MypageViewPage extends StatelessWidget {
  const MypageViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('マイページ'),
        actions: const [
          _EditButton(),
        ],
      ),
      body: const _Body(),
    );
  }
}

/// 編集ボタン
class _EditButton extends StatelessWidget {
  const _EditButton();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        // 編集画面に遷移する
        await Navigator.of(context).push<void>(
          MaterialPageRoute(
            builder: (context) => const UserEditPage(),
          ),
        );
      },
      icon: const Icon(Icons.edit),
    );
  }
}

class _Body extends ConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AsyncValueHandler<UserState>(
      value: ref.watch(userStateProvider),
      builder: (state) {
        return Column(
          children: [
            ListTile(
              title: const Text('ニックネーム'),
              subtitle: Text(state.nickname),
            ),
          ],
        );
      },
      loading: LinearProgressIndicator.new,
    );
  }
}
