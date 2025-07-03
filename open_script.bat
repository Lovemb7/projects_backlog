batch
@echo off
for /f "tokens=*" %%a in (links.txt) do start "" "chrome" %%a