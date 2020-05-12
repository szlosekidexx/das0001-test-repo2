@echo on

setlocal enabledelayedexpansion

for /f "tokens=2-7 delims=-:./ " %%a in ("%date% %time%") do if %%d LSS 10 (
set yr="%%c"
set n="!yr:~3,2!%%a%%b0%%d%%e%%f"
) else (
set yr="%%c"
set n="!yr:~3,2!%%a%%b%%d%%e%%f"
)

copy %1 ^"%~dpn1_%n%%~x1^"


