#! /bin/bash
#
# オープン認証ページ作成用
#
# 既存のファイルから作成するファイルをコピーしてくる
# templateやcssはページに合わせて別途自分で編集する必要有
#
# 実行方法: ss $1 $2 ($3)
# (例: ss ASIJ hoge hoge-hoge)
#
# $1: 既存のファイル名を指定 @see app/action/User/SpecialSite/
# $2: 作成したいクラス名(Sen_Action_UserSpecialSite$2)
# $3: URL(引数を指定しない場合は$2になる)


dirApp=app/action/User/SpecialSite
dirTpl=template/ja/user/SpecialSite
dirCss=www/css/user

cp $dirApp/$1.php $dirApp/$2.php
cp $dirTpl/$1.tpl $dirTpl/$2.tpl

mkdir www/css/user/$2/
cp $dirCss/$1/main.css $dirCss/$2/main.css

if $3 ==
mkdir www/$2/

# URLが特殊なものが多いので、コピー元を指定しておく
# 中身は同じなので問題ない
cp www/ASIJ/index.php www/$3/index.php

# 置換
replaceForm="replace Hidemitsu $1 $dirForm/$1.php"
replaceTmp="replace Hidemitsu $1 $dir7tTmp/$1.tpl"
replaceCss="replace hidemitsu $1 $dirCss/$1/main.css"
replacewww="replace Hidemitsu $1 www/$1/index.php"

















