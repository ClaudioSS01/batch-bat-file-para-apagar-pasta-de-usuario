@echo off

echo.
echo      BAT CRIADA POR CLAUDIO  
echo             TI J23
echo. 

setlocal EnableDelayedExpansion

for /F "delims= eol=" %%A IN ('dir /B /AD "C:\Users\"') do (
echo.
echo      DESEJA EXCLUIR O USUARIO %%~nxA 
echo      ESCREVA SIM OU NAO
echo. 
 set /p VAIEXCLUIRSOUN=Selecione o que deseja fazer: 


if %VAIEXCLUIRSOUN% equ SIM (echo Excluindo o usuario %%~nxA && net user %%~nxA /delete)
if %VAIEXCLUIRSOUN% equ NAO (echo usurio %%~nxA NAO foi excluido && echo Pulando para o proximo usuario)
   
)