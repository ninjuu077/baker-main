@echo off
setlocal
echo ===================================================================
echo     ✦ CRUMBLE ^& CREAM BAKERY - COMPILING ^& RUNNING JAVA SERVER ✦
echo ===================================================================

if not exist bin mkdir bin

echo [1/2] Compiling Java classes with javac...
javac -d bin -sourcepath src/main/java src/main/java/com/crumbleandcream/bakery/StandaloneBakeryServer.java
if %errorlevel% neq 0 (
    echo [ERROR] Java compilation failed. Please ensure JDK 8+ is installed.
    exit /b %errorlevel%
)

echo [2/2] Starting Crumble ^& Cream Java Server on port 8080...
echo.
java -cp bin com.crumbleandcream.bakery.StandaloneBakeryServer

endlocal
