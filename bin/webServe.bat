@echo off

set binDir=%~dp0
set match=false

if "%1" == "start" (
	set match=true
	cd "%binDir%..\"
	docker-compose start
)

if "%1" == "stop" (
	set match=true
	cd "%binDir%..\"
	docker-compose stop
)

if "%1" == "restart" (
	set match=true
	cd "%binDir%..\"
	docker-compose restart
)

if %match% == false (
	echo "Usage: webServe {start|stop|restart}"
)




