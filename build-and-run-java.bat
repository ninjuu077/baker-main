@echo off
setlocal
echo ===================================================================
echo     ✦ CRUMBLE ^& CREAM - FULL BUILD (REACT + JAVA SERVER) ✦
echo ===================================================================

echo [1/3] Building React frontend with Vite...
call npm run build
if %errorlevel% neq 0 (
    echo [ERROR] Frontend build failed.
    exit /b %errorlevel%
)

echo [2/3] Syncing frontend assets to Java static resources...
if not exist src\main\resources\static mkdir src\main\resources\static
xcopy /E /Y /I dist src\main\resources\static

echo [3/3] Compiling and starting Java server...
call run-java.bat

endlocal
