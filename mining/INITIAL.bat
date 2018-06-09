@echo off

setlocal enabledelayedexpansion

echo Initial start...

set poolPath=C:\tonguesea-mining\mining\cryptonight\pools

for %%i in ( etn,sumo,xmr,coal,trtl ) do (
	echo %%i
	for /f "usebackq delims=" %%a in ("%poolPath%\%%i\pools.txt") do (
		set "var=%%a"
		echo !var:Tonguesea-W0000=%computername%!>>"%poolPath%\%%i\pools.tmp"
	)
	move /y "%poolPath%\%%i\pools.tmp" "%poolPath%\%%i\pools.txt"
)

echo Changed worker name to %computername%

net share mining=C:\tonguesea-mining\mining /unlimited /CACHE:No /grant:everyone,full

echo mining folder shared

echo initial completed.

pause