@echo off
for %%a in ("Custom Music\*.brstm") do (
	copy /y "Custom Music\%%~na.brstm" workdir\files\sound\strm\%%~na.brstm
	del "Custom Music\%%~na.brstm"
)