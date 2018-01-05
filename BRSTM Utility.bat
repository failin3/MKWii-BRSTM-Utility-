@echo off
:A
echo --- failin's BRSTM Utility ---
echo.
:B
set /p command="Command: "
if %command%==move (
	call "move.bat"
	goto B
)
if %command%==build (
	call build.bat
	cls
	echo --- failin's BRSTM Utility ---
	echo.
	echo Build Completed!
	echo.
	goto B
)
if %command%==run (
	start C:\Games\Dolphin\Dolphin.exe "--exec=C:\Games\Games\Wii\PatchedISO.iso"
	cls
	goto A
)
if %command%==mcc (
	call mcc.bat
	cls
	echo --- failin's BRSTM Utility ---
	echo.
	echo BRSTMs Completed!
	echo.
	goto B
)
if %command%==list (
	echo All Tracks in the Custom Music folder:
	echo.
	for %%a in ("Custom Music\*_n.wav") do (
		echo %%~na
	)
	echo.
	goto B
)
if %command%==patcher (
	start "" "Patcher\MKWiiBRSARPatcher 1.0.exe"
	goto B
)
if %command%==brawlbox (
	start "" "BrawlBox\BrawlBox.exe"
	goto B
)
if %command%==audacity (
	start "" "C:\Program Files (x86)\Audacity\Audacity.exe"
	goto B
)
if %command%==cls (
	cls
	goto A
)
if %command%==clear (
	cls
	goto A
)
if %command%==exit (
	goto exit
)

:help
echo.
echo Type 'build' to compile an ISO from the workdirectory
echo Type 'move' to move BRSTMs from the custom music folder to the ISO location
echo Type 'mcc' to convert multi channel BRSTMs and move them into the ISO location
echo Type 'run' to start the patched ISO
echo Type 'audacity' to open Audacity
echo Type 'brawlbox' to open BrawlBox
echo Type 'patcher' to open the patcher
echo Type 'list' to see all current tracks using custom music
echo Type 'exit' to quit
echo.
goto B

:exit

