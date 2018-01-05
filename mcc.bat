@echo off
set /p name="Enter File Name: "
set /p length="Enter Length: "
set /p cc="Enter Channel Count: "


setlocal EnableDelayedExpansion
set i=0
for /L %%a in (1,1,%cc%) do (
	copy "Custom Music\%name%.wav" "MBRSTM\%%a.wav"
)

cls
cd MBRSTM
for /L %%a in (1,1,%cc%) do (
	DSPADPCM -e %%a.wav tmp\%%a.dsp -l1-%length%
)

for /L %%a in (1,1,%cc%) do (
	DEL %%a.txt
)
Call %cc%CHDSPRSTM.bat
cd .. 
for /L %%a in (1,1,%cc%) do (
	DEL MBRSTM\%%a.wav 
)
cls
copy /y MBRSTM\out%cc%CH.brstm workdir\files\sound\strm\%name%.brstm
DEL MBRSTM\out%cc%CH.brstm
cls
REM ren out%cc%CH.brstm %name%.brstm 