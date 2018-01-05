@echo off
echo ---Recompiling MKWii ISO---
echo.
echo Deleting old ISO
DEL PatchedISO.iso
cls
echo --- failin's BRSTM Utility ---
echo.
echo Compiling new ISO...
echo.
wit copy workdir PatchedISO.iso --id=RMCP35
echo Done!