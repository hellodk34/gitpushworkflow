@echo off
rem git push workflow windows bat file

rem author: hellodk
 
rem time: 2021-07-04 14:55:39
 
rem script feature description: `git add .` and `git commit -m` and `git push` workflow

echo.

echo this a git push workflow in Windows, using a bat file

echo.

echo current time is: %DATE% %TIME%

rem display a break line

echo.

set "CURRENT_DIR=%cd%"

cd "%CURRENT_DIR%"

echo current work dir is: %CURRENT_DIR%

echo.

set gittt="C:\Program Files\Git\cmd\git.exe"

echo first step: git add .

%gittt% add .

timeout /T 2 /NOBREAK

echo.

echo second step: git commit -m 'xxx'

%gittt% commit -m "%DATE% %TIME% update"

timeout /T 2 /NOBREAK

echo.

echo third step: git push

%gittt% push

rem the end of the workflow.

echo.

echo the end of the workflow.
