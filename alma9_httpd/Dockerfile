# OSの名前とバージョン
FROM almalinux:9

# 作成するイメージに付けるラベル情報
LABEL maintainter="nkojima" \
      version="1.0"

# RUN, CMD, ENTRYPOINT, docker run, execで実行するコンテナプロセスのユーザーを指定する
USER root

# システム全体を更新
RUN dnf update -y

# httpdをインストールして起動
# コンテナは起動後、実行しているプロセスがなかったら停止してしまうためFOREGROUNDで起動する
RUN dnf install -y httpd
RUN systemctl enable httpd
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

# 80番ポートを開放する
EXPOSE 80