@echo off
setlocal enabledelayedexpansion

rem Переименование файлов в текущей директории и всех вложенных папках
for /r %%f in (*_05-2025*) do (
  set "filename=%%~nf"
  set "new_filename=!filename:_05-2025=_06-2025!"
  if exist "%%~dpf!new_filename!%%~xf" (
    del "%%~dpf!new_filename!%%~xf"
  )
  ren "%%f" "!new_filename!%%~xf"
)

echo All done!