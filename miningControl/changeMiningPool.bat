@echo off

setlocal enabledelayedexpansion

set targetCoin=xmr
set originPool=pool.supportxmr.com
set targetPool=192.168.1.151
set poolBase=mining\cryptonight\pools

echo =================================

for %%t in ( TONGUESEA-OB1,
TONGUESEA-OB3,
TONGUESEA-A01,
TONGUESEA-A02,
TONGUESEA-A09,
TONGUESEA-A10,
TONGUESEA-B1,
TONGUESEA-B2,
TONGUESEA-B3,
TONGUESEA-B4,
TONGUESEA-B5,
TONGUESEA-B6,
TONGUESEA-B7,
TONGUESEA-B8,
TONGUESEA-C1,
TONGUESEA-C2,
TONGUESEA-C3,
TONGUESEA-C4,
TONGUESEA-C5,
TONGUESEA-C6,
TONGUESEA-C7,
TONGUESEA-C8
 ) do (

	echo ���� %%t %targetCoin% Ŀ���� %originPool% Ϊ %targetPool%

	echo Ŀ���ļ� \\%%t\%poolBase%\%targetCoin%\pools.txt

	net use \\%%t /user:Administrator

	for /f "usebackq delims=" %%a in ("\\%%t\%poolBase%\%targetCoin%\pools.txt") do (
		set "var=%%a"
		echo !var:%originPool%=%targetPool%!>>"\\%%t\%poolBase%\%targetCoin%\pools.tmp"
	)
	move /y "\\%%t\%poolBase%\%targetCoin%\pools.tmp" "\\%%t\%poolBase%\%targetCoin%\pools.txt"

	echo ������ɣ������������
	echo Y>\\%%t\mining\RESTART.txt
	echo �������
)

pause