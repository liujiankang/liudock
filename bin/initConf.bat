@echo off

set binDir=%~dp0

if exist "%binDir%..\configs" (

	for /f "delims=" %%a in ('dir /a /b "%binDir%..\configs"') do (
		
		if exist "%binDir%..\webCode\%%a" (
			xcopy /e /y "%binDir%..\configs\%%a" "%binDir%..\webCode\%%a"
		)
	)

)