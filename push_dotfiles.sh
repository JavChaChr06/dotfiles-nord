#!/bin/bash
cd "$(dirname "$0")" || exit 1

git add .
git commit -m "Automated dotfiles update on $(date)"
git push
