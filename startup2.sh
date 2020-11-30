#!/usr/bin/env bash

# 動画ファイルやjpgの権限変換に時間がかかりすぎてjupyterの起動が失敗してしまう事例があったので、コメントアウト
#find /home/user0/notebook -type f -exec chown user0:users {} \;
#find /home/user0/notebook -type d -exec chown user0:users {} \;
#find /home/user1/notebook -type f -exec chown user1:users {} \;
#find /home/user1/notebook -type d -exec chown user1:users {} \;
#find /home/user2/notebook -type f -exec chown user2:users {} \;
#find /home/user2/notebook -type d -exec chown user2:users {} \;
#find /home/user3/notebook -type f -exec chown user3:users {} \;
#find /home/user3/notebook -type d -exec chown user3:users {} \;
#find /home/user4/notebook -type f -exec chown user4:users {} \;
#find /home/user4/notebook -type d -exec chown user4:users {} \;
#find /home/user5/notebook -type f -exec chown user5:users {} \;
#find /home/user5/notebook -type d -exec chown user5:users {} \;
#find /home/user6/notebook -type f -exec chown user6:users {} \;
#find /home/user6/notebook -type d -exec chown user6:users {} \;

/usr/sbin/sshd -D & 
/opt/conda/envs/jupyter_env/bin/jupyterhub --ip=0.0.0.0 --port=8891 --log-file=/home/user0/notebook/jupyterhub2.log

