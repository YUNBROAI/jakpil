# 작필 코치 설치 (Windows PowerShell): ~\workspace\jakpil 에 받는다. 다시 실행하면 최신 버전으로 업데이트한다.
$ErrorActionPreference = "Stop"
$dir = Join-Path $HOME "workspace\jakpil"
New-Item -ItemType Directory -Force (Join-Path $HOME "workspace") | Out-Null
if (Test-Path (Join-Path $dir ".git")) { git -C $dir pull --ff-only }
else { git clone https://github.com/yunbroai/jakpil.git $dir }
Write-Host "설치 위치: $dir"
Write-Host "시작하기: cd `"$dir`"; claude"
