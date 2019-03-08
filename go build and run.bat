@echo on
@echo off
:debut
cls
echo ********* Build and Run GO *********
echo ************************************
set /p file_name="Entrez le nom du fichier: "
:afterFileName
set ori_file_name = %file_name%.go
go build %ori_file_name% -o %file_name%.exe
%file_name%.exe
echo ************************************
set /p choix=Quel genre de fermeture voulez-vous ? (y oui / f meme fichier / autre quitter)
(
	if %choix% == y goto debut
	if %choix% == f goto file
) 
goto end
:file
cls
goto afterFileName
:end