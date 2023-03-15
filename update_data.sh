#!/bin/bash
cd "$(dirname "$0")" # change directory to script directory
git pull # get the latest changes
git add . # add all data in the current directory
git commit -m "update data $(date '+%Y-%m-%d %H:%M:%S')" # commit with current datetime
git push # push changes to remote repository