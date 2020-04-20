# PHP の予約語キーワードを使うときの動作

> キーワードはいずれも定数、クラス名、 関数名として使用することはできません。 これらを変数名として使用することは一般的には可能ですが、 混乱を生じる可能性があります。

> PHP 7.0.0 以降は、これらのキーワードを プロパティや定数の名前として使えるようになりました。 また、クラスやインターフェイスそしてトレイトのメソッド名としても使えるようになりました。 しかし、class だけは例外で、これを定数名として使うことはできません。

[ドキュメント](https://www.php.net/manual/ja/reserved.keywords.php)

この実際の挙動はどうなるかの動作確認です。

最低限の構文に対して `php -l` の syntax check only のみ実行しています。

php 7.4.x

```
docker run --rm -it -v "${PWD}:/data" -w "/data" php:7.4-cli-alpine ./run.sh
```

php 7.3.x

```
docker run --rm -it -v "${PWD}:/data" -w "/data" php:7.3-cli-alpine ./run.sh
```

php 7.2.x

```
docker run --rm -it -v "${PWD}:/data" -w "/data" php:7.2-cli-alpine ./run.sh
```

php 7.1.x

```
docker run --rm -it -v "${PWD}:/data" -w "/data" php:7.1-cli-alpine ./run.sh
```

php 7.0.x

```
docker run --rm -it -v "${PWD}:/data" -w "/data" php:7.0-cli-alpine ./run.sh
```
