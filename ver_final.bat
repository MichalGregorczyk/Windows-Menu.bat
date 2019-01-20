@echo off
:start
cls
echo Wybierz z listy
echo -------------------
echo 1) utworz folder
echo 2) zmien nazwe
echo 3) usun
echo 4) zmiana folderu w ktorym sie znajdujesz
echo 5) usun katalog
echo 6) wypisz strukture pliku
echo 7) dodawanie pliku tekstowego
echo 8) usuwanie pliku tekstowego
echo 9) wyswietlanie zawartosci pliku tekstowego
echo 10) edycja pliku tekstowego
echo 11) zmiana nazwy pliku txt
echo 12) wyszukiwanie ciagu znakow w pliku
echo 13) wyszukiwanie ciagu znakow w lokalizacji
echo 14) zmiana atrybutow
echo 15) BREAK



set /p zmienna=wybierz:
if %zmienna%==1 goto 1
if %zmienna%==2 goto 2
if %zmienna%==3 goto 3
if %zmienna%==4 goto 4
if %zmienna%==5 goto 5
if %zmienna%==6 goto 6
if %zmienna%==7 goto 7
if %zmienna%==8 goto 8
if %zmienna%==9 goto 9
if %zmienna%==10 goto 10
if %zmienna%==11 goto 11
if %zmienna%==12 goto 12
if %zmienna%==13 goto 13
if %zmienna%==14 goto 14
if %zmienna%==15 exit

goto zly_wybor



:1
cls
echo podaj nazwe
set /p nazwa1=
mkdir %nazwa1%
echo utworzono katalog
pause
goto start




:2
echo podaj nazwe
set /p nazwa=
rename "%nazwa1%" "%nazwa%"
echo zmieniono nazwe katalogu
pause
goto start



:3
echo podaj nazwe folderu
set /p nazwa3=
rmdir %nazwa3%
echo usunieto folder
pause
goto start



:4
cls
echo ktory folder ?
set /p nazwa2=
cd %nazwa2%
echo jestes w folderze %nazwa2%
pause
goto start




:5
cls
echo Podaj nazwe usuwanego katalogu:
set /p nazwa=
rmdir /s /Q %nazwa%
echo Usunieto katalog i jego skladowe
pause
goto start


:6
tree
pause
goto start

:7
echo podaj nazwe pliku
echo ctrl+z zeby przerwac
set /p zmi=
copy con %zmi%.txt
echo utworzono plik %zmi%
pause
goto start

:8
echo Podaj nazwe pliku do usuniecia
set /p usun=
del /A "%usun%"
pause
goto start

:9
echo Podaj nazwe pliku ktory chcesz zobaczyc
set /p podgl=
TYPE %podgl%
pause
goto start

:10
echo Podaj nazwe pliku ktory chcesz edytowac
set /p edit=
echo podaj co chcesz wpisac
set /p tresc=
echo %tresc%>>%edit%
pause
goto start

:11
echo Podaj nazwe pliku ktoremu chcesz zmienic nazwe
set /p ren=
echo Podaj nowa nazwe pliku
set /p ren2=
rename %ren% %ren2%
pause
goto start

:12
echo Podaj ciag znaków do wyszukania:
	set /p t=
	echo Podaj z jakieg pliku ma to wyszukac:
	set /p p=
	find /i "%t%" %p%.txt
	pause
	goto start

:13
	echo Podaj ciag znaków do wyszukania:
	set /p t=
	find /i "%t%" *.txt
	pause
	goto start

:14
echo Podaj nazwe pliku ktoremu chcesz zmienic atrybuty
set /p plk=
echo +r czy -r?
set /p re=
echo +a czy -a?
set /p aa=
echo +s czy -s?
set /p ss=
echo +h czy -h?
set /p hh=

attrib %re% %aa% %ss% %hh% %plk%
pause
goto start


:zly_wybor
echo zly parametr 
pause
goto start
