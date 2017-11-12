#!/bin/sh
# Automatically merge the last commit through the following branches:
# 2.1 -} 2.2 -} 2.3 -} master

CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
LAST_COMMIT=$(git rev-list -1 HEAD)

echo Automatically merging commit $LAST_COMMIT from $CURRENT_BRANCH rippling to master

case $CURRENT_BRANCH in
dev)
  git checkout master && git merge $CURRENT_BRANCH
   ;;
   esac