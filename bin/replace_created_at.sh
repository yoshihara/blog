#!/bin/bash

# esaのfrontmatterはcreated_at/updated_atだが、hugoが認識できるのはdateなのでcreated_atをdateに置き換える
set -eux
FILE=`git show HEAD --diff-filter=AM --name-only --pretty=format:''`
if [ "${FILE##*.}" = "md" ]; then # 左端からパターンマッチする最長を除外
  sed -i s/\^created_at:/date:/ ${FILE}
fi
