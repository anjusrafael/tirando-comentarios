#!/bin/bash

# Define uma função para remover comentários de um arquivo
remove_comments() {
    sed '/^\s*#/d; s/#.*//' $1 > $1.tmp
    mv $1.tmp $1
}

# Percorre recursivamente os arquivos .php no diretório do projeto
find . -type f -name "*.php" | while read file; do
    remove_comments "$file"
done