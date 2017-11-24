#!/bin/bash

# esaのfrontmatterはcreated_at/updated_atだが、hugoが認識できるのはdateなのでcreated_atをdateに置き換える
set -eux
FILE=`git show HEAD --diff-filter=AM --name-only --pretty=format:''`
if [ "${FILE##*.}" = "md" ]; then # 左端からパターンマッチする最長を除外
  sed -i s/\^created_at:/date:/ ${FILE}
  md=`echo ${FILE} | sed s/.html.md$/.md/`
  if [ "${FILE}" != "${md}" ]; then
    if [ -e ${md} ]; then
      git rm ${md}
    fi
    git mv ${FILE} ${md}
    git add ${md}
    git commit -m "tweak & Rename ${FILE}"
  fi
fi
