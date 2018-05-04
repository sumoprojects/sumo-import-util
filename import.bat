echo Create a new export directory
pause
mkdir C:\ProgramData\sumokoin\export
echo Download sumo-blockchain-import file
pause
powershell -command "& { iwr https://blockchain.sumokoin.org/winbin/sumo-blockchain-import.exe -OutFile C:\ProgramData\sumokoin\export\sumo-blockchain-import.exe }"
echo Download Curl Download Manager for Windows
pause
powershell -command "& { iwr https://skanthak.homepage.t-online.de/download/curl-7.59.0.cab -OutFile C:\ProgramData\sumokoin\export\curl-7.59.0.cab }"
expand C:\ProgramData\sumokoin\export\curl-7.59.0.cab -F:* C:\ProgramData\sumokoin\export
echo Remove corrupt blockchain - Make sure your GUI wallet is not running!
pause
rmdir /s /q C:\ProgramData\sumokoin\lmdb
echo Create a new database directory
pause
mkdir C:\ProgramData\sumokoin\lmdb
echo Download Current Blockchain Image
pause
C:\ProgramData\sumokoin\export\I386\curl.exe https://blockchain.sumokoin.org/blockchain.raw --output C:\ProgramData\sumokoin\export\blockchain.raw
echo Import Blockchain
pause
C:\ProgramData\sumokoin\export\sumo-blockchain-import.exe --verify 0 C:\ProgramData\sumokoin\export\blockchain.raw
echo Remove Unnecessary Files
pause
del /Q C:\ProgramData\sumokoin\export\*.*
rmdir /S /Q C:\ProgramData\sumokoin\export
echo Blockchain was successfully imported!
pause

