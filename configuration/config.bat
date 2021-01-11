echo off
setlocal
FOR /F "tokens=3,* delims=.=" %%G IN (test.properties) DO ( set %%G=%%H )

rem now use below vars
if "%%G"=="file"
 set lfile=%%H
if "%%G"=="path"
 set lpath=%%H
if "%%G"=="extension"
 set lextention=%%H
echo %path%

endlocal
