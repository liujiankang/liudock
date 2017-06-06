@echo off

set binDir=%~dp0

for /f "tokens=1,2" %%a in (%binDir%conf\repositories.txt) do (
	if not exist "%binDir%..\webCode/%%a" (
		git clone %%b "%binDir%..\webCode\%%a"
	)
)