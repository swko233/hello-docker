# README

### Dockerの起動(OSXにて)
```
# docker-sync用のインストール
$ gem install docker-sync
$ brew install fswatch
$ brew install unison

# docker-sync起動
$ docker volume create --name=docker-app-sync
$ docker-sync start

# コンテナのビルド
$ docker-compose up -d --build

# appコンテナに入る
$ docker-compose exec app /bin/bash
```

### rails用初期セットアップ(rubyコンテナにて)
```
# bundle
# bin/rails db:migrate
```

### 2回目以降の起動
```
# docker-sync起動
$ docker-sync start
# docker起動
$ docker-compose up -d
```

### コンテナに入る際
```
$ docker-compose exec app /bin/bash
```

#rspecの導入
```
Gemfileに記入後
$ bundle install
$ bundle exec rails generate rspec:install
$ bundle binstubs rspec-core
```