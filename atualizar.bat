@echo off
cd /d "%~dp0"

if "%1"=="" (
    set "msg=Atualizacao automatica"
) else (
    set "msg=%*"
)

echo Adicionando arquivos...
git add .

echo Criando commit...
git commit -m "%msg%"

echo Enviando para o GitHub...
git push

echo Concluido!
pause
