# Vonage Rails Devise 2fa Demo
公式のチュートリアル『[Two-factor authentication for security and spam prevention](https://developer.vonage.com/verify/tutorials/verify-2fa-ruby/introduction)』をDocker化したVonage Verify APIによる2FAのサンプルアプリケーションです。

## アプリケーション起動方法

```
$ docker-compose up -d
```

## 2FAデモの実施方法

### APIキーとシークレットキーの登録
`.env`ファイルに`VONAGE_API_KEY`と`VONAGE_API_SECRET`をセットします。
APIキーとAPIシークレットはVonageアカウント作成後、[ダッシュボード画面](https://dashboard.nexmo.com/)で確認できます。

### アカウントの作成
`http://localhost:3000/users/sign_up`にアクセスし、アカウントを作成します。

<kbd><img width="370" alt="sign_up" src="https://user-images.githubusercontent.com/3121046/144741818-f1c4ee76-2954-467f-8744-4cbdf9b982e5.png"></kbd>

### 電話番号をユーザー情報に追加

`http://localhost:3000/users/edit`にアクセスし、アカウントに電話番号の情報を追加します。
フォーマットはE164ですので例えば`09012345678`であれば`+819012345678`のようになります。

<kbd><img width="370" alt="edit_user" src="https://user-images.githubusercontent.com/3121046/144741869-2e4492f8-bfba-46a1-80c5-2f037782fe8a.png"></kbd>

### 認証コードをデバイスで確認する

ユーザー情報更新後、認証コードの入力画面に遷移するとともにデバイスに認証コードが送られます。

<kbd><img width="370" alt="verify" src="https://user-images.githubusercontent.com/3121046/145022841-4dcb5bf9-0713-4c67-a020-8ad8e9f7e686.png"></kbd>

### 認証コードの入力
デバイスに送られてきた認証コードを入力します。

<kbd><img width="370" alt="verify" src="https://user-images.githubusercontent.com/3121046/144741901-d83f2d58-9880-4781-8245-2c617dbe9d33.png"></kbd>

### 認証結果の確認

`http://localhost:3000/`にリダイレクトされればOKです。

<kbd><img width="370" alt="root_page" src="https://user-images.githubusercontent.com/3121046/144741956-fd2c8804-42f5-41c0-a321-150bf0873936.png"></kbd>

## DB接続方法

```
$ docker-compose exec db mysql -uwebuser -pwebpass -D vonage_rails_devise_2fa_demo_development;
```

## Railsコンソール接続方法

```
$ docker-compose exec app rails c
```
