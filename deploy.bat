@echo off
echo.
echo ======================================
echo   留学コンパス デプロイツール
echo ======================================
echo.
echo サイトを更新してNetlifyに公開します...
echo.

cd /d "%~dp0"

git add .
git commit -m "サイト更新 %date% %time%"

netlify deploy --dir . --prod

echo.
echo ======================================
echo   完了！サイトが更新されました
echo   https://moonlit-croquembouche-879a32.netlify.app
echo ======================================
echo.
pause
