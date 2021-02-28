@echo off
mode con cols=200 lines=20
color 0B
Embedder.UI.exe
powershell -Command "Get-Content uninstal.log -wait"
color 08