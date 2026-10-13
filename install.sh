#!/usr/bin/env bash
# 작필 코치 설치 (macOS / Linux): ~/workspace/jakpil 에 받는다. 다시 실행하면 최신 버전으로 업데이트한다.
set -e
DIR="$HOME/workspace/jakpil"
mkdir -p "$HOME/workspace"
if [ -d "$DIR/.git" ]; then
  git -C "$DIR" pull --ff-only
else
  git clone https://github.com/yunbroai/jakpil.git "$DIR"
fi
echo "설치 위치: $DIR"
echo "시작하기: cd \"$DIR\" && claude"
