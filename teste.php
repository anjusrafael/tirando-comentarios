# Crie um arquivo de teste com alguns comentários
echo "// Comentário 1" > teste.php
echo "# Comentário 2" >> teste.php
echo "Código" >> teste.php

# Execute a função remove_comments no arquivo de teste
remove_comments "teste.php"

# Verifique se os comentários foram removidos corretamente
cat teste.php
