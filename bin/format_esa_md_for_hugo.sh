#!/bin/bash

# esaのfrontmatterはcreated_at/updated_atだが、hugoが認識できるのはdateなのでcreated_atをdateに置き換える
# ファイル名にある ".html" というのを除いたblog.bomberowl.org/posts/#{id}/ というURLにしたいのでファイル名を変更している
set -eux
for file in `find ./content/posts/ -name "*.html.md"` ;do
  first_commit_date=`git log -1 --reverse --oneline --pretty=format:'%ci' ${file}`
  sed -i s/\^created_at:.\\+$/"date: ${first_commit_date}"/ ${file}
  md=`echo ${file} | sed s/.html.md$/.md/`
  mv ${file} ${md}
done
