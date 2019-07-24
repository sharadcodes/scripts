@echo off

echo ______________________________
echo.
echo       Hi ! %username%
echo ______________________________
echo.



echo   GOING TO Folder: Documents
echo.

if exist "c:\Users\%username%\Documents\NetBeansProjects" (
	cd "c:\Users\%username%\Documents\NetBeansProjects"
)
if not exist "c:\Users\%username%\Documents\NetBeansProjects" (
	mkdir "c:\Users\%username%\Documents\NetBeansProjects"
	cd "c:\Users\%username%\Documents\NetBeansProjects"
)

echo DONE

if exist "GSTBillingSystem" (
	echo       REMOVING FOLDER
	echo.
	
	rd /s /q "GSTBillingSystem"
	echo DONE
	echo.
)
if not exist "GSTBillingSystem" (
	echo       CLONING REPOSITORY
	echo ______________________________
	echo. 
	git clone https://github.com/sharadcodes/GSTBillingSystem.git
)