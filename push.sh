#!/bin/bash -v

echo "in <push.sh>"
#echo ONLY PUSH ON TRAVIS!
if [ `/usr/bin/whoami` == "travis" ] ; 
then
  echo "Looks like TRAVIS-CI" ;
  echo TRAVIS BUILD NUMBER: $TRAVIS_BUILD_NUMBER
else
  echo Not TRAVIS - EXIT
fi

setup_git() {
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis CI"
}

commit_website_files() {
  git checkout -b gh-pages
  git add . oofile
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"
}

upload_files() {
  git remote add origin-pages https://${GH_TOKEN}@git@github.com:mm002a/Fort-C.git > /dev/null 2>&1
  #git remote add origin-pages https://${GH_TOKEN}@git@github.com:mm002a/Fort-C.git > /dev/null 2>&1
  git remote add origin-pages https://git@github.com:mm002a/Fort-C.git > /dev/null 2>&1
  git push --quiet --set-upstream origin-pages gh-pages 
}

setup_git
commit_website_files
upload_files
