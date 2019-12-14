@echo off
:pliki
FOR %%i IN (Jeden.txt Dwa.txt Trzy.txt) do if not exist %%i\NUL goto tworzenie %%i
goto wybor
:tworzenie
echo tekst> Jeden.txt
echo tekst> Dwa.txt
echo tekst> Trzy.txt
goto wybor
:wybor
echo Nazwy plikow
echo Plik Jeden
echo Plik Dwa 
echo Plik Trzy
echo Wybierz plik ktory chcesz otworzyc, wpisujac pierwsza litere jego nazwy
choice /C:JDT
IF ERRORLEVEL 3 GOTO trzy
IF ERRORLEVEL 2 GOTO dwa
IF ERRORLEVEL 1 GOTO jeden
goto wybor
:jeden
start Jeden.txt
goto koniec
:dwa
start Dwa.txt
goto koniec
:trzy
start Trzy.txt
goto koniec
:koniec