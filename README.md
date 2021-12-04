# Vonage Rails Devise 2fa Deemo

## 起動方法

```
$ docker-compose up -d
```

`localhost:3000`でアクセス

## DB接続方法

```
$ docker-compose exec db mysql -uwebuser -pwebpass -D vonage_rails_devise_2fa_demo_development;
```

## Railsコンソール接続方法

```
$ docker-compose exec app rails c
```
