#-------------------------------------------------------------------------------
# AlmaLinux9をベースにしてApacheをインストールしたイメージを作り、ホスト側の
# サンプルHTMLの入ったフォルダをDocumentRoot(/var/www/html)にマウントする。
#-------------------------------------------------------------------------------
# イメージの作成
docker build . -t alma9_httpd

# コンテナの作成と実行
docker run --name alma9_test -p 10088:80 -it --mount type=bind,source={HTML folder},target=/var/www/html alma9_httpd