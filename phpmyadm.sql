-- Aula 10 – Criação e Exportação via PHPMyAdmin e Console

-- Criamos a base de dados
CREATE DATABASE exemplo;

-- Criamos uma tabela (pode ser feito pelo PHPMyAdmin)
-- Após salvar no PHPMyAdmin, podemos ver os comandos que foram usados com:

SHOW CREATE TABLE amigos;
-- Exibe o comando SQL que criou a tabela "amigos"

SHOW CREATE DATABASE exemplo;
-- Exibe o comando SQL que criou a base "exemplo"

-- Para excluir uma tabela:
DROP TABLE amigos;

-- Observação para exportar:
-- Para exportar corretamente o banco de dados no PHPMyAdmin,
-- primeiro clique na “casinha” (Home), que representa o servidor principal
-- Isso evita que exporte apenas partes ou tabelas isoladas
