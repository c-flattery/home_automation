@echo off
:: This batch script queries the tasklist for running BlueStacks instances 
:: If found, it closes the instance and all associated processes and shuts the computer down
:: The original use case was to run as a scheduled task at 12 midnight 

tasklist /fi "imagename eq HD-Player.exe" | find /i "HD-Player.exe" > nul
if not errorlevel 1 (
  echo "Commence Cinderella Protocol"
  TYPE %~dp0slipper.txt
  taskkill /f /im "HD-Player.exe"
  taskkill /f /im "HD-MultiInstanceManager.exe"
  timeout /t 5
  START cmd.exe /c "shutdown /s"
  ) 
else (
  exit
)
exit