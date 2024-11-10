#!/bin/bash
## Script de exemplo para automação de documentação
# Este script faz backup de um diretório específico

# Parâmetro: Caminho para o diretório a ser copiado
backup_dir="$1"

# Função para criar backup
## backup()
# Realiza o backup do diretório informado e o salva em /backups
# Argumento: Caminho do diretório
backup() {
  local dir=$1
  cp -r "$dir" "/backups/$(basename "$dir")_backup_$(date +%F)"
  echo "Backup do diretório $dir realizado com sucesso."
}

# Execução da função
backup "$backup_dir"

