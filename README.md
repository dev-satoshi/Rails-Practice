# メモ

## 環境構築
gemをインストールする
```
$ gem install bundler
```
Ruby on Railsをインストールする
```
$ gem install rails
```

## Railsコマンド
Railsアプリケーションを作成
```
$ rails new <アプリ名>
```
APIのみのアプリケーションを作成
```
$ rails new <アプリ名> --api
```
MySQLを使うアプリケーション
```
$ rails new weblog -d mysql
```
サーバーを立ち上げる
```
$ rails server
```
マイグレーションファイルの作成
```
$ rails generate migration <マイグレーションファイル名>
```
マイグレーションの実行
```
rails db:migrate
```
Modelを作成する
```
$ rails generate model <モデル名> <カラム名:データ型> <カラム名:データ型> …
```

## 重要なディレクトリ
### Model
app/models
### View
app/views
### Controller
app/controllers
### Routing
config/routes.rb
