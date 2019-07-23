@echo off

echo                                  _
echo                                 ^| ^|    
echo    __ _   _____    _   _   ___  ^| ^|___
echo   / _  ^| ^|  __ \  ^| ^| ^| ^| /     ^| ^|_  \
echo  ^| (_^| ^| ^| ^|__) ^| ^| ^|_^| ^| \___  ^| ^| ^| ^|
echo   \__, ^| ^|  ___/   \__,_^|  ___^| ^| ^| ^| ^|
echo    __/ ^| ^| ^|
echo   ^|___/  ^|_^|

echo.
echo.
set /p message="Enter message : "
echo.
echo _______________________________
echo.
echo         ADDING FILES
echo _______________________________
echo.
git add .
echo.
echo _______________________________
echo.
echo         MAKING COMMIT     
echo _______________________________
echo.
git commit -m "%message%"
echo.
echo _______________________________
echo.
echo         PUSHING TO GITHUB
echo _______________________________
echo.
git push
echo.
