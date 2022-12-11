import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../application/user/state/user_state.dart';
import '../../application/user/state/user_update_result.dart';
import '../../application/user/user_service.dart';
import '../component/widget_ref.dart';

/// ユーザー編集画面
class UserEditPage extends ConsumerWidget {
  const UserEditPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ユーザー更新結果を監視してエラーならダイアログを出して更新できたらメッセージを表示して元の画面に戻る
    ref.listenResult(
      userUpdateResultProvider,
      completeMessage: 'ユーザーを更新しました。',
      complete: (_) {
        Navigator.of(context).pop();
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('ユーザー'),
      ),
      body: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: const [
          _NicknameTextField(),
          SizedBox(height: 20),
          SizedBox(
            height: 48,
            width: double.infinity,
            child: _UpdateButton(),
          ),
        ],
      ),
    );
  }
}

/// 編集中のニックネームコントローラー
///
/// 初期値はユーザー状態のニックネームから取得してくる
final _editingNicknameControllerProvider = StateProvider.autoDispose(
  (ref) {
    final userState = ref.read(userStateProvider).value;
    final nickname = userState?.nickname ?? '';
    final controller = TextEditingController(text: nickname);
    ref.onDispose(controller.dispose);
    return controller;
  },
);

/// ニックネームのテキストフィールド
class _NicknameTextField extends ConsumerWidget {
  const _NicknameTextField();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextField(
      controller: ref.watch(_editingNicknameControllerProvider),
      decoration: const InputDecoration(
        label: Text('ニックネーム'),
        border: OutlineInputBorder(),
      ),
    );
  }
}

/// 更新ボタン
class _UpdateButton extends ConsumerWidget {
  const _UpdateButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () async {
        // ユーザーを更新する
        final nickname = ref.read(_editingNicknameControllerProvider).text;
        await ref.read(userServiceProvider).update(
              nickname: nickname,
            );
      },
      child: const Text('更新'),
    );
  }
}
