@echo off


set binDir=%~dp0
set hasImg=false
set match=false

cd %binDir%..\

for /f "delims=" %%a in ('docker images wcgtool -q') do (
	set hasImg=true	
)

if %hasImg% == false (
	docker build -t wcgtool "build/wcgtool"
)

for /f "tokens=1,*" %%a in ("%*") do (
	docker run --rm -it -v %binDir%..\webCode:/webCode -v %homepath%\.ssh:/root/.ssh -v %homepath%\.gitconfig:/root/.gitconfig wcgtool /bin/bash -c "cd %%a && composer %%b"
	goto end
)

echo "Usage: wcomposer some-path composer-sub-command"

:end




