@echo off
set /p message="Enter message : "
echo.
echo ------- ADDING FILES      -------
echo.
git add .
echo.
echo ------- MAKING COMMIT     -------
echo.
git commit -m "%message%"
echo.
echo ------- PUSHING TO GITHUB -------
echo.
git push
