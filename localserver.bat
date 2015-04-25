:: Check for Python Installation
@ECHO off >nul
cd C:\Python34
python -V > nul 2>nul
if errorlevel 1 goto errorNoPython

	:: Reaching here means Python is installed.
	:: Execute stuff...
		echo:
		echo:------------------- SUCCESS -----------------------
		echo: 
		echo:Your local server has started.
		if exist C:\Python34\sites (
			echo:To reach it, go to: http://localhost:1337/Sites
		) else (
			mkdir sites
			cd C:\Python34\sites\
			type NUL > index.html
			echo:Looks like you're missing the Sites directory!
			echo:One has been created for you with a blank HTML
		)
		echo:
		start http://localhost:1337/sites
		cd C:\Python34
		python -m http.server 1337
		

	:: Once done, exit the batch file -- skips executing the errorNoPython section
	goto:eof

:errorNoPython
		echo:
		echo:---------------------- ERROR --------------------------
		echo: 
		echo:Looks like your local server couldn't start!
		echo: 
		echo:See below as to why:
		echo:	1) You arn't using a Windows machine.
		echo:	2) Python may not be installed
		echo:	3) Make sure Python is installed at: C:\Python34
		pause >nul

