#!/bin/bash

# Define uma função para remover comentários de um arquivo
remove_comments() {
    echo "Removendo comentários de $1"
    sed -E -i '' -e '/^\s*#/d; s/\/\/.*//; s/\/\*.*\*\///' "$1"
    mv "$1.tmp" "$1"
    echo "Comentários removidos de $1"
}

# Percorre recursivamente os arquivos .php no diretório do projeto
find . -type f -name "*.php" | while read file; do
    remove_comments "$file"
done

find . -type f -name "*.js" | while read file; do
    remove_comments "$file"
done