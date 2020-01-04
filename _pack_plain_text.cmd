::@echo off
setlocal EnableDelayedExpansion
set "EXIT_CODE=0"
chcp 65001 2>nul >nul

title [%~n0]  -  [%~n1]

if ["%~1"] equ [""] ( goto ERR_NO_ARG )


set "SOURCE=%~f1\"
set "TARGET=%~f1_tmp\"
if not exist %~s1\NUL ( goto ERR_NOT_FOLDER )


::information about the web-extension (name - from the folder name, version - from the manifest.json file using external nodejs-script tool)
set "EXT_NAME=%~n1"
set "EXT_VERSION="
for /f "tokens=*" %%a in ('call "%~sdp0\_res\manifest_version\index.cmd" "%SOURCE%manifest.json" ') do (set "EXT_VERSION=%%a" )



xcopy /E /Y /F /C /G /Z /B "%~1" "%TARGET%"
set "EXIT_CODE=%ErrorLevel%"
if ["%EXIT_CODE%"] NEQ ["0"] ( goto ERR_COPY )


::------------------------------------------------- accessing the target-folder.
cd /d "%TARGET%"




::------------------------------------------------- keeping just a single 'manifest.json' in the folder.
set /p "IS_BROWSER_MODE_FIREFOX=packing a Firefox extension? [Y]"

if ["%IS_BROWSER_MODE_FIREFOX%"] EQU ["n"] ( goto BROWSER_MODE_CHROME   )
if ["%IS_BROWSER_MODE_FIREFOX%"] EQU ["N"] ( goto BROWSER_MODE_CHROME   )

::packing a Firefox web-extension.
del /f /q "manifest.json"
ren "firefox.manifest.json" "manifest.json"

::packing a Chrome web-extension.
:BROWSER_MODE_CHROME
del /f /q "firefox.manifest.json"




::------------------------------------------------- cleaning up stuff.
del /f /q "README.md"
del /f /q ".gitignore"
del /f /q ".gitattributes"
cd "resources/"
del /f /q "_*"
del /f /q "*.txt"
del /f /q "*.7z"
del /f /q "*.pdn"
del /f /q "*.gif"
del /f /q "tile.png"
del /f /q "screenshot*.*"

::precleanup
del /f /q "*.min.js"
del /f /q "*.obf.js"

cd ..

call "D:\Software\7zip\7z.exe" a -y -sdel -mmt4 -mx9 -ssw "..\%EXT_NAME%_%EXT_VERSION%.zip" *
if ["%ErrorLevel%"] NEQ ["0"] ( 
  pause
) 


goto END

:ERR_NO_ARG
  echo please provide an argument which is the path to a folder, 1>&2
  echo that will be copied and compressed to plain.zip, then obfuscated and zipped again. 1>&2
  set "EXIT_CODE=111"
  goto END

:ERR_NOT_FOLDER
  echo please provide a path to a folder. 1>&2
  set "EXIT_CODE=222"
  goto END
  
:ERR_COPY
  echo there was an error while trying to copy %SOURCE% to %TARGET%                     1>&2
  echo please check you have permissions to access the folders,                         1>&2
  echo and that the target-folder is not already-exist and used by another application. 1>&2
  set "EXIT_CODE=333"
  goto END

:END
::pause
::exit /b %EXIT_CODE%
  exit %EXIT_CODE%
