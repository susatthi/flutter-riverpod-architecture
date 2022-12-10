import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';

import '../../../domain/exception/database_exception.dart';
import '../../../domain/user/entity/user.dart';
import '../../../domain/user/entity/user_input_data.dart';
import '../../../domain/user/entity/value_object/nickname.dart';
import '../../../domain/user/user_repository.dart';

/// メモリ版ユーザーリポジトリ
class MemoryUserRepository extends ChangeNotifier implements UserRepository {
  MemoryUserRepository() {
    // 自分自身を監視してStreamにユーザーを流す
    addListener(() {
      if (userChangesController.isClosed) {
        return;
      }
      userChangesController.add(_user);
    });

    () async {
      // 初回読み込みに擬似的に2秒待つ
      await Future<void>.delayed(const Duration(seconds: 2));
      _user = const User(
        nickname: Nickname(value: '山田太郎'),
      );
      notifyListeners();
    }();
  }

  // ユーザー
  User? _user;

  final userChangesController = StreamController<User?>.broadcast();

  @override
  void dispose() {
    userChangesController.close();
    super.dispose();
  }

  @override
  Stream<User?> userChanges() => userChangesController.stream;

  @override
  Future<void> updateUser(UserInputData inputData) async {
    // ローディングを出したいので擬似的に1秒待つ
    await Future<void>.delayed(const Duration(seconds: 1));

    // 入力データを検証する
    inputData.validate();

    // 1/2の確率で書き込みエラー
    if ((Random().nextInt(2) % 2).isEven) {
      throw DatabaseException.updateFailed(label: 'ユーザー');
    }

    // ユーザーを更新する
    _user = _user?.copyWith(
      nickname: inputData.nickname,
    );
    notifyListeners();
  }
}
