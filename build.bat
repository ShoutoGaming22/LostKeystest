@echo off
echo Building Lost Keys Mod
call .\gradlew clean build
if %errorlevel% neq 0 (
    echo Build failed!
    exit /b %errorlevel%
)
echo Build successful!
echo Copying to Minecraft mods folder...
copy /Y build\libs\lost_keys-1.0.0.jar %APPDATA%\.minecraft\mods\
echo Done!
