@rem * FILENAME: WSDE-6050.cmd
@rem * USAGE:
@rem * %1 = Environment (DEV, QA or PROD); %2 = Server Name
@rem * REFERENCES:
@rem * NOTES:
@rem * Copyright (c) TALX Corp. 2017. All rights reserved.
@rem * CHANGES:
@rem *	Date			User				Change
@rem *	----------		-----------------             ----------------------------------------------
@rem *	11/19/2020		Balasubramaniam Arumugam                  Initial creation.

@rem

@echo off

if '%1' == '' goto usage
if '%1' == '/?' goto usage
if '%1' == '-?' goto usage
if '%1' == '?' goto usage
if '%1' == '/help' goto usage

@rem  Create output directory based on date and time
for /f "tokens=2-4 delims=/ " %%i in ('date/t') do (
      (set Mth=%%i)
      (set Dy=%%j)
      (set Yr=%%k)
)

set hh=%time:~0,2%
set mm=%time:~3,2%
set ss=%time:~6,2%

if "%time:~0,1%"==" " set hh=0%hh:~1,1%

set outdir=%2_%1_%Yr%%Mth%%Dy%_%hh%%mm%%ss%
if '%2' == '' @set outdir=%1_%Yr%%Mth%%Dy%_%hh%%mm%%ss%

if not exist %outdir% mkdir %outdir%

@set outfilebase=%~nx0.out
@set outfile=%outdir%\%outfilebase%
@set env=%1
@set server=%2
if '%2' == '' @set server=%1

if "%env%" == "DEV" set fileShare=S1DWDEVSIS01.sldc1.dev.equifax.com\GUTSSIS
if "%env%" == "QA" set fileShare=s1ewsfsvss01.sldc1.com\DW_Reports_Test
if "%env%" == "PROD" set fileShare=s1ewsfsvss01.sldc1.com\DW_Reports_Prod


@rem --------------------------
@rem START - Deploy SQL Scripts
@rem --------------------------

for %%s in ( ^

	"Delete_Decommission_Jobs.sql"^

 ) do (
	call:ProcessSqlFile %%s
	if ERRORLEVEL 1 ( exit /b goto :eof )
)


@rem --------------------------
@rem START - copying files
@rem --------------------------

@rem call:CopyFile "xxxx.dtsx" "\\%server%\G$\BIDW\SSIS\Daily\xxxx.dtsx"

@echo.
@rem ----------------------------

goto finish

REM: ProcessSqlFile
:ProcessSqlFile
	@echo.
	@set scriptfile=Call sqlcmd "%~1"
	@echo %scriptfile%
	@echo %scriptfile% >>%outfile%
	@echo %Date% %Time% >>%outfile%
	call sqlcmd -S %server% -E -i "%~1" -b >>%outfile%
	if %ERRORLEVEL% NEQ 0 goto errors
       	@set scriptfile=Call sqlcmd "%~1" Completed
	@echo %scriptfile%
	@echo %scriptfile% >>%outfile%
	@echo %Date% %Time% >>%outfile%
	@echo.
goto:eof

:CopyFile
	@echo.
	@set scriptfile=Copy %1 %2
	@echo %scriptfile%
	@echo %scriptfile% >>%outfile%
	@echo %Date% %Time% >>%outfile%
	attrib -r "%2\*.*" /s  >>%outfile%
	if %ERRORLEVEL% NEQ 0 goto errors
	Copy %1 %2  >>%outfile%
	if %ERRORLEVEL% NEQ 0 goto errors
	@set scriptfile=Copy %1 %2 Completed
	@echo %scriptfile%
	@echo %scriptfile% >>%outfile%
	@echo %Date% %Time% >>%outfile%
	@echo.
goto:eof

REM: How to use screen
:usage
echo.
echo Usage: MyScript Server
echo Server: the name of the target SQL Server echo.
echo Example: MyScript.cmd MainServer
echo.
echo.
goto done

REM: error handler
:errors

	for /f %%a in ('type %outfile%^|find /c /v ""') do set lines=%%a
	set /a k=%lines%-1
	set sk=
	set sk=skip=%k%
	set errorno=%lines%
	for /f "%sk% tokens=*" %%i in (%outfile%) do echo %%i
	echo Script Execution Failed.Error message written to output log file.
	exit /b  %lines%
goto:eof

REM: finished execution
:finish
echo.
echo Script execution is complete!
:done
@echo on