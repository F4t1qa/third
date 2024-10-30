call npm i 
call npm run build
@echo off
set folderPath=C:\Users\Administrator\Desktop\second

:: 删除文件夹中的文件
del /S /Q %folderPath%\*.*

:: 删除文件夹中的子文件夹及其内容
for /F %%i in ('dir /B %folderPath%') do rmdir /S /Q %folderPath%\%%i

:: 剪切 dist 文件夹中的内容到目标文件夹
xcopy /E /Y "dist\*" "%folderPath%"

:: 删除原始 dist 文件夹
rmdir /S /Q dist

cd folderPath
git add .
git commit -m '1'
git push