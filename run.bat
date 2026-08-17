@echo off
REM ============================================================
REM Java First - Student Management System Runner (Windows)
REM ============================================================

if not exist bin mkdir bin

echo Compiling Java source files...
javac -d bin src\*.java

if %ERRORLEVEL% EQU 0 (
    echo Compilation successful! Launching application...
    echo -------------------------------------------------
    java -cp bin Main
) else (
    echo [ERROR] Compilation failed. Please make sure JDK is installed and added to PATH.
    pause
)
