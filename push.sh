#!/bin/bash -v

echo "in <push.sh>"
echo ONLY PUSH ON TRAVIS!
whoami
if [ `/usr/bin/whoami` == "travis" ] ; 
then
  echo "Looks like TRAVIS-CI" ;
else
  echo Not TRAVIS - EXIT
  exit
fi
exit # for debug purposes

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
  git remote add origin-pages https://${GH_TOKEN}@github.com/MVSE-outreach/resources.git > /dev/null 2>&1
  git push --quiet --set-upstream origin-pages gh-pages 
}

setup_git
commit_website_files
upload_files
