@echo off

set binDir=%~dp0

echo ���ع�������...

cd %binDir%..\

docker-compose up --build -d