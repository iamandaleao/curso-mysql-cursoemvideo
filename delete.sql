
DELETE FROM cursos
WHERE idcurso = '8';
-- Apaga o registro onde o id do curso é 8 (chave primária)

DELETE FROM cursos
WHERE ano = '2018'
LIMIT 3;
-- Apaga até 3 registros onde o ano é 2018



-- Apagar todos os dados da tabela (pode usar WHERE)
DELETE FROM nome_da_tabela;

-- Apagar todos os dados da tabela (mais rápido, sem WHERE)
TRUNCATE TABLE nome_da_tabela;

-- Apagar a tabela inteira (estrutura + dados)
DROP TABLE nome_da_tabela;

-- Apagar o banco de dados inteiro
DROP DATABASE nome_do_banco;

-- Apagar uma coluna específica da tabela
ALTER TABLE nome_da_tabela DROP COLUMN nome_da_coluna;
