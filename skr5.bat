@echo off
:pocztek
echo %1 , %2
IF %1==%2 goto rowne
IF NOT EXIST %1 goto nieistnieje
IF NOT EXIST %2 goto nieistnieje
IF EXIST %1 goto zamiana
:rowne 
echo obie zmienne maja ta sama nazwe
goto koniec
:zamiana
SET temp=0
ren %1% %temp%
ren %2 %1
ren %temp% %2
goto koniec
:nieistnieje
echo zmienne nie istnieja
goto koniec
:koniec
pause