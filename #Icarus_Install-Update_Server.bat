@echo off
:start

	:: DELTA Server Install/Update Script for Icarus
	:: PLEASE CHANGE ALL NEEDED VALUES TO YOURS
	:: Window Title
	set title=Icarus Install/Update
	
	:: Steam Login Info
	set SteamLogin=anonymous
	
	:: Steam Gamne ID
	set GameBranch=2089300
	
	:: SteamCMD Location
	set SteamCMDPath="D:\Game_Server\SteamCMD"

	:: Server Location
	set serverLocation="D:\Game_Server\Server_Icarus"

	:: Server.exe
	set exe=IcarusServer.exe
	
	:: Config Location (not tested)
	:: set UserDir="C:\Users\USER\Documents\Icarus\config"
	:: ___________________________________________________


:: BELOW THIS LINE YOU HAVE NOTHING TO CHANGE ! ! !
:: ________________________________________________
:: Set title for terminal
title %title% Server

echo.
:: start Server Update Check
echo Checking for %title% update
echo.
%SteamCMDPath%\steamcmd.exe +force_install_dir %serverLocation% +login %SteamLogin% +"app_update %GameBranch%" +quit
echo.
echo Your %title% is up to date !

echo.
echo     key "ENTER" to exit
pause