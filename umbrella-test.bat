@echo off
setlocal enabledelayedexpansion
set "urls=https://welcome.umbrella.com https://malware.opendns.com https://phish.opendns.com http://examplemalwaredomain.com https://examplemalwaredomain.com http://examplebotnetdomain.com https://examplebotnetdomain.com http://exampleadultsite.com https://exampleadultsite.com http://www.internetbadguys.com https://www.internetbadguys.com https://phish.opendnstest.com https://ssl-proxy.opendnstest.com http://proxy.opendnstest.com/ http://proxy.opendnstest.com/botnet.htm http://proxy.opendnstest.com/malware.htm http://proxy.opendnstest.com/phishing.htm"

for %%a in (%urls%) do (
	echo -----------------------------
	echo Fetching: %%a
	C:\WINDOWS\system32\curl.exe -v --no-progress-meter --ssl-revoke-best-effort --stderr - %%a
	echo.
)

endlocal
