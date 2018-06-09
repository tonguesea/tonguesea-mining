@echo off

setlocal enabledelayedexpansion

echo =================================

for %%t in ( TONGUESEA-OB1 ) do (

	echo 开始更新%%t

	net use \\%%t /user:Administrator

	echo 将要更新的文件：
	dir C:\tonguesea-mining\miningControl\UpdateFile\ /s /b

	echo 更新中...
	xcopy C:\tonguesea-mining\miningControl\UpdateFile \\%%t\mining\ /f /y /e

	echo 更新完成，设置重启标记
	echo Y>\\%%t\mining\RESTART.txt
	echo 设置完成
)

pause