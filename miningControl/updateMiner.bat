@echo off

setlocal enabledelayedexpansion

echo =================================

for %%t in ( TONGUESEA-OB1 ) do (

	echo ��ʼ����%%t

	net use \\%%t /user:Administrator

	echo ��Ҫ���µ��ļ���
	dir C:\tonguesea-mining\miningControl\UpdateFile\ /s /b

	echo ������...
	xcopy C:\tonguesea-mining\miningControl\UpdateFile \\%%t\mining\ /f /y /e

	echo ������ɣ������������
	echo Y>\\%%t\mining\RESTART.txt
	echo �������
)

pause