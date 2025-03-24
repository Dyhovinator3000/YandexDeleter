@echo off
setlocal

set "search_dir=C:\"
set "log_file=DeleteLog.txt"
set "found=false"

echo Ishchu i udalayu Yandex... (esli zdes' dolgoe vremya nichevo net est' shans shto yandeksa net)

for /d %%D in ("%search_dir%Yandex*") do (
    echo Udalayu papku: %%D
    rmdir /s /q "%%D"
    echo [%date% %time%] %%D >> "%log_file%"
    set "found=true"
)

for /r "%search_dir%" %%F in (Yandex*) do (
    echo Udalayu fayl: %%F
    del /f /q "%%F"
    echo [%date% %time%] %%F >> "%log_file%"
    set "found=true"
)

if "%found%"=="false" (
    echo Yandeksa net!
)

echo Zaversheno!
endlocal
pause