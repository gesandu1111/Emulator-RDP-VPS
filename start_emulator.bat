@echo off
ECHO Starting the Android Emulator...

REM *** Replace the path below with the exact location of your Emulator's executable file ***
REM Example path for NoxPlayer:
SET EMULATOR_PATH="C:\Program Files (x86)\Nox\bin\Nox.exe"

REM Example path for BlueStacks:
REM SET EMULATOR_PATH="C:\Program Files\BlueStacks\Bluestacks.exe"

REM Check if the executable file exists before trying to run it
IF EXIST %EMULATOR_PATH% (
    ECHO Launching Emulator...
    START "" %EMULATOR_PATH%
    ECHO Emulator launch command sent.
) ELSE (
    ECHO ERROR: Emulator executable not found at %EMULATOR_PATH%
    ECHO Please check the path and try again.
)

REM Optional: Wait a few seconds before closing the command window
TIMEOUT /T 5 /NOBREAK

EXIT
