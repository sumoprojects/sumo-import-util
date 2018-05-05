Sumo Blockchain Import Utility
Open a notepad instance, copy paste the commands and then change the saved txt's extension from command line to convert it into a bat (with the ren command).
(e.g c:\> ren NewTextFile.txt ImportUtility.bat)
Note For Users running Windows without Powershell 3.0
Users running on an older release of Windows 7 that doesnot come with Powershell 3.0 (It comes preincluded on Windows 10) must edit the bat file and change the lines
powershell -command "& { iwr https://blockchain.sumokoin.org/winbin/sumo-blockchain-import.exe -OutFile C:\ProgramData\sumokoin\export\sumo-blockchain-import.exe }" 
to
bitsadmin.exe /transfer "DownloadImportBinary" https://blockchain.sumokoin.org/winbin/sumo-blockchain-import.exe C:\ProgramData\sumokoin\export\sumo-blockchain-import.exe
and
powershell -command "& { iwr https://skanthak.homepage.t-online.de/download/curl-7.59.0.cab -OutFile C:\ProgramData\sumokoin\export\curl-7.59.0.cab }"
to
bitsadmin.exe /transfer "DownloadCurlForWindows" https://skanthak.homepage.t-online.de/download/curl-7.59.0.cab C:\ProgramData\sumokoin\export\curl-7.59.0.cab
