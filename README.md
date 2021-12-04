## このリポジトリについて

## システム構成
webコンテナとdbコンテナで構成されている。 webコンテナはrailsイメージ、dbコンテナはmysqlを利用している。

インストールされたgemは`docker-rails6-web-mysql8-boilerplate_gem_data`、データベース情報は`docker-rails6-web-mysql8-boilerplate_mysql_data`という名前でデータボリュームに永続化している。

データベース接続は`webuser`ユーザーで行っている。

## 起動方法

```
$ docker-compose up -d
```

`localhost:3000`でアクセス


## 終了方法

コンテナのみ破棄する場合

```
$ docker-compose down
```

データボリューム含め破棄する場合(= データの初期化)

```
$ docker-compose down --volumes
```

## データベースの中身を確認する方法

```
$ docker-compose exec db mysql -uwebuser -pwebpass -D docker_rails6_web_mysql8_boilerplate_development;
```

## Sequel Pro接続方法

```
ホスト: 127.0.0.1
ユーザー名: webuser
パスワード: xxx
データベース: docker_rails6_web_mysql8_boilerplate_development
ポート: 33060
```

## railsコンソールに接続する

```
$ docker-compose exec web rails c
```


## エラー対応

### コンテナを立ち上げようとするとbundle installしろと言われる時
- `docker-compose run web bundle install`でvolumeを更新する。

## 他のリポジトリで使う時

大文字/小文字、アンダースコア/ハイフンを区別して置換する

- 'docker-rails6-web-mysql8-boilerplate'を'[project-name]'に置換
  - アプリ名
- 'docker_rails6_web_mysql8_boilerplate'を'[project_name]'に置換
  - データベース名
  - package.json名
- 'DOCKER_RAILS6_WEB_MYSQL8_BOILERPLATE'を'[PROJECT_NAME]'に置換
  - 環境変数名
- 'DockerRails6WebMysql8Boilerplate'を'[ProjectName]'に置換
  - configのモジュール名
  - テンプレートERBのタイトル

RubyMineの場合は『Edit → Find → Replace in Path』から一括置換ができる。Match caseにチェックをつけると大文字小文字を区別して検索できる。
