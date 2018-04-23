@echo off

set /p targetCoins=<C:\tonguesea-mining\mining\TARGET_COIN.txt

:start
echo =================================
echo Going to mining: %targetCoins%

echo Coping config file

copy /Y C:\tonguesea-mining\mining\cryptonight\config\config.txt C:\Windows\System32\
copy /Y C:\tonguesea-mining\mining\cryptonight\config\config.txt C:\tonguesea-mining\mining\cryptonight\

echo Coping pool file
copy /Y C:\tonguesea-mining\mining\cryptonight\pools\%targetCoins%\pools.txt C:\Windows\System32\
copy /Y C:\tonguesea-mining\mining\cryptonight\pools\%targetCoins%\pools.txt C:\tonguesea-mining\mining\cryptonight\

for /f "delims=: tokens=1,2*" %%i in (C:\tonguesea-mining\mining\DEVICE_CFG.txt) do (
	if "%%i"=="CPU" set enableCPU=%%j
	if "%%i"=="AMD" set enableAMD=%%j
	if "%%i"=="NVIDIA" set enableNVIDIA=%%j
)

echo Enable CPU: %enableCPU%
echo Enable AMD: %enableAMD%
echo Enable NVIDIA: %enableNVIDIA%
echo Config Device...

if "%enableCPU%"=="Y" (
	echo enable CPU
	copy /Y C:\tonguesea-mining\mining\cryptonight\divice_enabled\cpu.txt C:\Windows\System32\
	copy /Y C:\tonguesea-mining\mining\cryptonight\divice_enabled\cpu.txt C:\tonguesea-mining\mining\cryptonight\
) else (
	echo disable CPU
	copy /Y C:\tonguesea-mining\mining\cryptonight\divice_disabled\cpu.txt C:\Windows\System32\
	copy /Y C:\tonguesea-mining\mining\cryptonight\divice_disabled\cpu.txt C:\tonguesea-mining\mining\cryptonight\
)

if "%enableAMD%"=="Y" (
	echo enable AMD
	copy /Y C:\tonguesea-mining\mining\cryptonight\divice_enabled\amd.txt C:\Windows\System32\
	copy /Y C:\tonguesea-mining\mining\cryptonight\divice_enabled\amd.txt C:\tonguesea-mining\mining\cryptonight\
) else (
	echo disable AMD
	copy /Y C:\tonguesea-mining\mining\cryptonight\divice_disabled\amd.txt C:\Windows\System32\
	copy /Y C:\tonguesea-mining\mining\cryptonight\divice_disabled\amd.txt C:\tonguesea-mining\mining\cryptonight\
)


if "%enableNVIDIA%"=="Y" (
	echo enable NVIDIA
	copy /Y C:\tonguesea-mining\mining\cryptonight\divice_enabled\nvidia.txt C:\Windows\System32\
	copy /Y C:\tonguesea-mining\mining\cryptonight\divice_enabled\nvidia.txt C:\tonguesea-mining\mining\cryptonight\
) else (
	echo disable NVIDIA
	copy /Y C:\tonguesea-mining\mining\cryptonight\divice_disabled\nvidia.txt C:\Windows\System32\
	copy /Y C:\tonguesea-mining\mining\cryptonight\divice_disabled\nvidia.txt C:\tonguesea-mining\mining\cryptonight\
)


echo Start mining program...

start C:\tonguesea-mining\mining\cryptonight\xmr-stak.exe

echo %targetCoins% mining started !
echo =================================

:check
choice /t 30 /d y /n > nul
echo ---------------------------------
echo Checking target mining coin...
set /p newTarget=<C:\tonguesea-mining\mining\TARGET_COIN.txt

if %newTarget%==%targetCoins% (
	echo No change.
	goto check
) else ( 
	echo Changing from %targetCoins% to %newTarget%, killing current mining process...
	taskkill.exe /f /im xmr-stak.exe
	echo Killed.
	set targetCoins=%newTarget%
	goto start
)

pause