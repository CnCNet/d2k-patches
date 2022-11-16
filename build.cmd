@echo off
REM
REM cnc-patch environment config
REM
set PATH=C:\win-builds-patch-32\bin
gmake clean
gmake
del .dune2000.exe
del .dump-.strip-.patch-.import-.dune2000.exe
pause
