@echo off
set sourceFile=%1
set targetFile=%sourceFile:~0,-5%.patched.iso"

set patchedHash=68568d72aab26cd85cf76c485e72119c94453312
set originalHash=6b5f06c10d50ebb4099cded88217eb71e5bfbb4a

if [%sourceFile%]==[] (
	echo Please drag'n'drop the .iso onto this batch file. :D
	goto :end
)

echo Prepared to patch %sourceFile% to %targetFile%, press any key to start. :3
pause

echo Verifying source file...

fciv %sourceFile% %ltr% -sha1 | findstr "%originalHash%" > tmpFile
set /p calcHash1= < tmpFile
del tmpFile

if "%calcHash1%" == "" (
	echo Could not confirm hash! Your .iso seems to be wrong! D:
	goto :end
)

echo The Legend of Zelda: The Wind Waker hash confirmed:
echo %calcHash1%

echo Applying patch now...

xdelta3 -d -s %sourceFile% Windwaker_Pronoun_Patch.vcdiff %targetFile%

echo Done!

echo Verifying created file...

fciv %targetFile% %ltr% -sha1 | findstr "%patchedHash%" > tmpFile
set /p calcHash2= < tmpFile
del tmpFile

if "%calcHash2%" == "" (
	echo Could not confirm hash! The patching seems to have gone wrong! D:
	goto :end
	goto :end
)

echo The Legend of FemLink: The Wind Waker hash confirmed:
echo %calcHash2%

echo All done! Enjoy! \o/

:end
echo on
@pause
