#!/bin/sh

set -e

git config --global user.email ${EMAIL}
git config --global user.name ${USERNAME}

[ -z "${GITHUB_PAT}" ] && exit 0
[ "${TRAVIS_BRANCH}" != "master" ] && exit 0

git config --global user.email "matthew.upson@digital.cabinet-office.gov.uk"
git config --global user.name "Matthew Upson"

git clone -b gh-pages https://${GITHUB_PAT}@github.com/${TRAVIS_REPO_SLUG}.git output
cp *.html output
cd output
git add *.html -f
git commit -m "Automatic update of release" || true
git push origin gh-pages
