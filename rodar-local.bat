@echo off
where node >nul 2>nul
if errorlevel 1 (
  echo Node.js nao encontrado.
  echo Abra o arquivo index.html diretamente ou instale o Node.js para usar localhost.
  pause
  exit /b 1
)

start "" "http://127.0.0.1:8000"
node "%~dp0server.mjs"
