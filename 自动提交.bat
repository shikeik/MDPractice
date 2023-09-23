@echo off
setlocal enabledelayedexpansion

rem 添加所有修改
git add .

rem 提示用户输入 commit 信息
set /p commit_message=请输入 commit 信息: 

rem 提交更改
git commit -m "!commit_message!"

rem 推送到远程仓库
git push origin

endlocal
