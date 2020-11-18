#! /bin/bash

# "組織名/プロジェクト名"を取得。e.g. sen-corporation/8122
remote_origin_url=$( git config --get remote.origin.url  | sed -e 's/.git$//g' )

# カレントブランチ名を取得
current_branch=$( git branch | grep '^*' | awk '{print $2}' )

# プルリク用URLを生成
echo $remote_origin_url/pull/new/$current_branch

# プッシュ
push="git push origin $current_branch"
eval ${push}
