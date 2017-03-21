#!/usr/bin/env /bin/sh


# src: https://help.github.com/articles/setting-up-your-github-pages-site-locally-with-jekyll/



BUILD_PATH="./dist/"



bundle install

rm -rf "${BUILD_PATH}"
bundle exec jekyll build -d "${BUILD_PATH}"
