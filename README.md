# wpd-rails6

## WEB+DB PRESS Vol.111

### `詳解Rails6` 実習結果

-----

#### ※dockerコンテナを使用して実習を行ったため、誌上とは異なり、以下の作業を行っている。

- コンテナ起動

    `% docker compose up -d`

- コンテナに入る

    `% docker exec -it -e COLUMNS=128 -e LINES=64 -e TERM=xterm rails6-web-1 bash --login`

- Dockerfileでインストールしたrailsのパスを追加する

    `# /usr/local/bundle/bin/rails --version`

    Rails 6.1.5

    `# export PATH=$PATH:"/usr/local/bundle/bin"`

    `# rails --version`

    Rails 6.1.5

- 作成

    `# rails new wpd_blog_app`