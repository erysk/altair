[![rhiroe](https://circleci.com/gh/rhiroe/altair.svg?style=shield)](https://app.circleci.com/pipelines/github/rhiroe/altair)

# アプリについて

現状特に何も実装してません。

## 環境構築

```bash
# Rubyは.ruby-versionに記載されているバージョンのものをご用意ください。

$ git clone git@github.com:rhiroe/altair.git
$ cd altair

$ bin/bundle install
$ bin/yarn install

# データベースのDockerコンテナを立ち上げる
$ docker-compose up

# PostgreSQLライブラリがローカルにない場合はインストールしてください(psqlコマンドが使えればいいのでバージョンはなんでもいいです)。
# 例: Homebrewを使っている場合
$ brew install postgresql

$ bin/rails db:create
$ bin/rails db:migrate

$ bin/rails server
```

## 開発準備
```bash
# コミット時にRubocopのチェックが入る(任意)
$ bundle exec overcommit --install
```

## テスト

```bash
$ bin/rspec
```
