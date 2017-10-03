#!/bin/bash

MD_FILENAME=javaone-2017-10-03

cd ./src

# Export to html using [backslide](https://github.com/sinedied/backslide)
bs export ${MD_FILENAME}.md
mv dist/${MD_FILENAME}.html ../index.html
rmdir dist

# git push
git add ${MD_FILENAME}.md \
        template/index.html \
        template/style.scss \
        template/remark.min.js \
        ../index.html
git commit -m "Updating ${MD_FILENAME}"
git push origin gh-pages

