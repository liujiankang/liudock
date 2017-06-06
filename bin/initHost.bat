@echo off

set binDir=%~dp0

for /f "usebackq" %%a in ("%binDir%conf\hosts.txt%") do (
	for /f "tokens=3 delims= " %%b in ('find /C "%%a" C:\Windows\System32\drivers\etc\hosts') do (
		if %%b equ 0 (
			echo 127.0.0.1		%%a >> C:\Windows\System32\drivers\etc\hosts
		)
	)
)

