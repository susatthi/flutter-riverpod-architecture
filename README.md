# flutter_riverpod_architecture

Riverpodを使ったレイヤードアーキテクチャのサンプルアプリ

## アーキテクチャ

[flutter_riverpod v2](https://pub.dev/packages/flutter_riverpod) を使ったレイヤードアーキテクチャです。

[CODE WITH ANDREA](https://codewithandrea.com/articles/flutter-app-architecture-riverpod-introduction/) と [os1ma さん ( DDD, CQRS ) ](https://qiita.com/os1ma/items/286eeec028e30e27587d) のアーキテクチャを参考にしました。

![アーキテクチャ図](https://user-images.githubusercontent.com/13707135/200081763-c2809366-046d-4a82-8367-9bee5a751b90.png)

### Presentation 層

ユーザーとの I/F を担う層。Application 層と Domain 層に依存する。Infrastructure 層に依存してはいけない。

#### Widget

ページや UI 部品の Widget クラス群。State を監視（ watch / listen ）して UI に表現する。ユーザーイベントを検知して Service のメソッドを呼び出す。キャッシュが効かなくなるので直接 Repository Interface を呼び出してはいけない。画面遷移の実装は Widget のイベントハンドラー内で行ってよい。

#### Application 層

アプリケーションのロジックや状態を定義する層。Domain 層に依存する。Presentation 層と Infrastructure 層に依存してはいけない。

#### State

アプリのあらゆる状態。Domain 層の Entity そのものでもよいし、複数の Repository をまたいだ Entity を統合するクラスでもよい。State は `StateProvider` 等でラップされ Widget や他の State から参照される。

#### Service

ユーザーイベントを受け付けて、複数の Repository Interface を呼び出して Entity を受け取って State を更新するサービスクラス。Widget からのメソッド呼び出しや、依存する State の更新を契機に発火する。

### Domain 層

ドメインロジックやドメインオブジェクト（エンティティ）を定義する層。どの層にも依存してはいけない。

#### Entity

Repository Interface で扱うドメインオブジェクト（データの構造体）。入力値のバリデーションは Entity のコンストラクタで実装する。Infrastructure 層が投げる例外はドメイン層で定義する。

#### Repository Interface

データの永続化や外部サービス連携を担う Repository のインターフェース。集約毎に定義する。

### Infrastructure 層

データの永続化や外部サービス連携を担う層。Domain 層に依存する。Presentation 層と Application 層に依存してはいけない。

#### Repository Implements

Repository Interface の実装。Data Source を利用してデータの永続化を行う。

#### Data Source

様々なデータソース。Firebase だったり、API だったり、Hive だったり、SharedPreferences だったり、Isar だったりする。

## フォルダ構成

```  
├── application                              アプリケーション層
│   └── <関心事>
│       ├── <state>                          状態クラス群
│       └── <関心事>_service.dart             サービスクラス
├── domain                                   ドメイン層
│   ├── exception                            例外クラス
│   └── repository
│       └── <集約>
│           ├── <集約>_repository.dart        リポジトリのインターフェースクラス
│           └── entity                       集約単位のエンティティ、値オブジェクト
├── infrastructure                           インフラストラクチャ層
│   └── <データソース>
│       └── <集約>
│           └── <集約>_repository.dart       リポジトリの実装
├── presentation
│   ├── app.dart                             アプリケーション
│   ├── component                            プレゼンテーション層で共通の Widget
│   └── page
│       └── <関心事>
│           ├── component                    画面単位の Widget
│           └── <関心事>_<CURD>_page.dart     画面Widget
└── util                                     どの層からもアクセス可能な便利クラス（ロガー、定数など）
```

## ライセンス

MIT

