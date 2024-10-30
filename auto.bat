call npm i 
call npm run build
@echo off
set folderPath=C:\Users\Administrator\Desktop\second

set "folderPath=C:\Users\Administrator\Desktop\second"

for /F %%i in ('dir /B "%folderPath%"') do (
    if not "%%i"=="auto.bat" (
        rmdir /S /Q "%folderPath%\%%i"
    )
)

:: 剪切 dist 文件夹中的内容到目标文件夹
xcopy /E /Y "dist\*" "%folderPath%"

:: 删除原始 dist 文件夹
rmdir /S /Q dist


C:\Users\Administrator\Desktop\second\auto.bat 