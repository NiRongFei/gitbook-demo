#!/usr/bin/env sh
# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
gitbook build

# 进入生成的文件夹
cd _book

# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m '提交部署'

# 如果发布到 https://<USERNAME>.github.io
git push -f git@github.com:NiRongFei/gitbook-demo.git master

# 如果发布到 https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages

cd -
