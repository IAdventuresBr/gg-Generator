# Script para atualizar e enviar ao GitHub automaticamente
# Execute: .\atualizar.ps1
# Ou com mensagem: .\atualizar.ps1 -m "Sua mensagem"

param(
    [string]$m = "Atualização automática"
)

Set-Location $PSScriptRoot

Write-Host "Adicionando arquivos..." -ForegroundColor Cyan
git add .

$status = git status --porcelain
if ($status) {
    Write-Host "Criando commit..." -ForegroundColor Cyan
    git commit -m $m
    Write-Host "Enviando para o GitHub..." -ForegroundColor Cyan
    git push
    Write-Host "Concluído!" -ForegroundColor Green
} else {
    Write-Host "Nenhuma alteracao para enviar." -ForegroundColor Yellow
}
