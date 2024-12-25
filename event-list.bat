@echo off
title lista spotkania

:menu
cls
echo *********************
echo *                   *
echo *  lista spotkania  *
echo *                   *
echo *********************
echo.
echo 1. wyswietl informacje o wydarzeniu
echo 2. wyswietl agende spotkania
echo 3. zapisz sie na wydarzenie
echo 4. zakonc
echo.

set /p choice=podaj opcje (1-4):

if %choice%==1 goto info
if %choice%==2 goto agenda
if %choice%==3 goto zapis
if %choice%==4 goto koniec

echo Niepoprawna opcja! Spróbuj ponownie.
pause
goto menu

:info
cls
echo informacje o wydarzeniu:
echo to jest wydarzenie w twoim miescie
pause
goto menu

:agenda
cls
echo to agenda spotkania
echo - 08:00 rozpoczecie
echo - 10:00 obiad
echo - 10:30 krotka prezentacija
echo - 11:00 drugie spotkanie
pause
goto menu

:zapis
set /p imie=podaj swoje imie: 
set /p nazw=podaj swoje nazwisko:
set /p email=podaj swoj adres email:
echo.
echo wprowadzono takie dane %imie%, %nazw%, %email%
echo wprowadzono takie dane %imie%, %nazw%, %email% >> dane.txt
echo
set /p potwierdzenie=czy dane sa poprawne? (tak/nie)
pause
goto menu
