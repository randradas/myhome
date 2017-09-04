#!/bin/bash

git log --pretty="%H" --author="$1" | while read commit_hash; do git show --oneline --name-only $commit_hash | tail -n+2; done | sort | uniq
