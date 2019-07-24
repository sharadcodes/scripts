@echo off

echo.
echo +-----------------------------------+
echo  PLEASE WAIT : %username% 
echo +-----------------------------------+
echo.

if exist "C:/Users/%username%/gname.txt" (
	echo +-----------------------------------+
	echo ^|           FOUND USERNAME          ^|
	echo +-----------------------------------+
)else (
	set /P myname="ENTER USERNAME : "
	@echo %myname% > C:/Users/%username%/gname.txt
)

if exist "C:/Users/%username%/gpass.txt" (
	echo +-----------------------------------+
	echo ^|           FOUND PASSWORD          ^|
	echo +-----------------------------------+
)else (
	set /P mypass="ENTER PASSWORD : "
	@echo %mypass% > C:/Users/%username%/gpass.txt
)


set /P u=<"C:/Users/%username%/gname.txt"
set /P p=<"C:/Users/%username%/gpass.txt"

@echo %u%
@echo %p%

REM git config credential.helper store
REM @echo git clone https:// %s% : %p% @}github.com/%repo_url%

@echo on