import 'package:energy_drink_log/View/bottom_tab_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomTabBarView(),
    );
  }
}

// flutterでレッドブルを飲んだ本数を記録するアプリを作りたい。
// ・bottombarには「記録」「設定」の２つ。真ん中にカメラを起動するボタン
// ・飲んだレッドブルのバーコードを認識してアプリにカウントできる。
// ・JANコードの読み取りはパッケージを使用する。
// ・一日に記録できる本数に限りは無いが、一度カウントしてから5分間は次の一本を記録できないように。
// ・データベースはfirebaseを使用してusersテーブルを作成しその中に記録する。
// ・初回起動時にfirebase authの匿名ログインを使ってuuidを発行する。
// ・usersテーブル内にuuidのドキュメントを作成しそのコレクション内に値を保存
// ・バーコード読み取り時にレッドブル以外のものを検出したら「レッドブルではありません」というアナウンスをだす。
// ・JANコードの判別は頭6桁が456029と一致しない場合は通信などを挟まずに違う判定を出す。一致する場合はyahoo商品検索apiを使ってJANコードで検索をかける。商品数が1以上ならレッドブルであると判定してカウントする
// ・アーキテクチャはmvcを採用して各ファイルに処理とUI表示を分ける