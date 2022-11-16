@echo off
REM
REM cnc-patch environment config
REM

del .dump-.strip-.patch-.import-.dune2000.exe
if exist .dump-.strip-.patch-.import-.dune2000.exe exit 0

del .dune2000.exe
if exist .dune2000.exe exit 0

del dune2000.exe
if exist dune2000.exe exit 0

set PATH=C:\win-builds-patch-32\bin
REM gmake clean
gmake WWDEBUG=1

del .dune2000.exe
del .dump-.strip-.patch-.import-.dune2000.exe

pause
