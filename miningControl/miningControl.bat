@echo off

set /p targetCoins=<c:\miningControl\TARGET_COIN.txt

:start
echo =================================
echo Going to mining: %targetCoins%

echo Coping config file

net use \\TONGUESEA-OB3  /user:Administrator
xcopy c:\miningControl\TARGET_COIN.txt \\TONGUESEA-OB3\mining\ /f /y

net use \\TONGUESEA-A1  /user:Administrator
xcopy c:\miningControl\TARGET_COIN.txt \\TONGUESEA-A1\mining\ /f /y
net use \\TONGUESEA-A2  /user:Administrator
xcopy c:\miningControl\TARGET_COIN.txt \\TONGUESEA-A2\mining\ /f /y
net use \\TONGUESEA-A3  /user:Administrator
xcopy c:\miningControl\TARGET_COIN.txt \\TONGUESEA-A3\mining\ /f /y
net use \\TONGUESEA-A4  /user:Administrator
xcopy c:\miningControl\TARGET_COIN.txt \\TONGUESEA-A4\mining\ /f /y
net use \\TONGUESEA-A7  /user:Administrator
xcopy c:\miningControl\TARGET_COIN.txt \\TONGUESEA-A7\mining\ /f /y
net use \\TONGUESEA-A8  /user:Administrator
xcopy c:\miningControl\TARGET_COIN.txt \\TONGUESEA-A8\mining\ /f /y
net use \\TONGUESEA-A9  /user:Administrator
xcopy c:\miningControl\TARGET_COIN.txt \\TONGUESEA-A9\mining\ /f /y
net use \\TONGUESEA-A10  /user:Administrator
xcopy c:\miningControl\TARGET_COIN.txt \\TONGUESEA-A10\mining\ /f /y

net use \\TONGUESEA-B1  /user:Administrator
xcopy c:\miningControl\TARGET_COIN.txt \\TONGUESEA-B1\mining\ /f /y
net use \\TONGUESEA-B2  /user:Administrator
xcopy c:\miningControl\TARGET_COIN.txt \\TONGUESEA-B2\mining\ /f /y
net use \\TONGUESEA-B3  /user:Administrator
xcopy c:\miningControl\TARGET_COIN.txt \\TONGUESEA-B3\mining\ /f /y
net use \\TONGUESEA-B4  /user:Administrator
xcopy c:\miningControl\TARGET_COIN.txt \\TONGUESEA-B4\mining\ /f /y
net use \\TONGUESEA-B5  /user:Administrator
xcopy c:\miningControl\TARGET_COIN.txt \\TONGUESEA-B5\mining\ /f /y
net use \\TONGUESEA-B6  /user:Administrator
xcopy c:\miningControl\TARGET_COIN.txt \\TONGUESEA-B6\mining\ /f /y
net use \\TONGUESEA-B7  /user:Administrator
xcopy c:\miningControl\TARGET_COIN.txt \\TONGUESEA-B7\mining\ /f /y
net use \\TONGUESEA-B8  /user:Administrator
xcopy c:\miningControl\TARGET_COIN.txt \\TONGUESEA-B8\mining\ /f /y

net use \\TONGUESEA-C1  /user:Administrator
xcopy c:\miningControl\TARGET_COIN.txt \\TONGUESEA-C1\mining\ /f /y
net use \\TONGUESEA-C2  /user:Administrator
xcopy c:\miningControl\TARGET_COIN.txt \\TONGUESEA-C2\mining\ /f /y
net use \\TONGUESEA-C3  /user:Administrator
xcopy c:\miningControl\TARGET_COIN.txt \\TONGUESEA-C3\mining\ /f /y
net use \\TONGUESEA-C5  /user:Administrator
xcopy c:\miningControl\TARGET_COIN.txt \\TONGUESEA-C5\mining\ /f /y
net use \\TONGUESEA-C7  /user:Administrator
xcopy c:\miningControl\TARGET_COIN.txt \\TONGUESEA-C7\mining\ /f /y
net use \\TONGUESEA-C9  /user:Administrator
xcopy c:\miningControl\TARGET_COIN.txt \\TONGUESEA-C9\mining\ /f /y
net use \\TONGUESEA-C11  /user:Administrator
xcopy c:\miningControl\TARGET_COIN.txt \\TONGUESEA-C11\mining\ /f /y
net use \\TONGUESEA-C13  /user:Administrator
xcopy c:\miningControl\TARGET_COIN.txt \\TONGUESEA-C13\mining\ /f /y
net use \\TONGUESEA-C15  /user:Administrator
xcopy c:\miningControl\TARGET_COIN.txt \\TONGUESEA-C15\mining\ /f /y

pause