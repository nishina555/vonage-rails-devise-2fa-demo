# Vonage Rails Devise 2fa Demo

## アプリケーション起動方法

```
$ docker-compose up -d
```

## 2FAデモの実施方法

### アカウントの作成
`http://localhost:3000/users/sign_up`にアクセスし、アカウントを作成します。

### 電話番号をユーザー情報に追加

`http://localhost:3000/users/edit`にアクセスし、アカウントに電話番号の情報を追加します。
フォーマットはE164ですので例えば`090-1234-5678`であれば`+819012345678`のようになります。

### 認証コードをデバイスでする

ユーザー情報更新後、認証コードの入力画面に遷移するとともにデバイスに認証コードが送られます。

### 認証コードの入力
デバイスに送られてきた認証コードを入力します。


### 認証結果の確認

`http://localhost:3000/`にリダイレクトされればOKです。


## DB接続方法

```
$ docker-compose exec db mysql -uwebuser -pwebpass -D vonage_rails_devise_2fa_demo_development;
```

## Railsコンソール接続方法

```
$ docker-compose exec app rails c
```
