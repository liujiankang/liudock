@echo off

set binDir=%~dp0

echo 本地构建环境...

cd %binDir%..\

docker-compose up --build -d