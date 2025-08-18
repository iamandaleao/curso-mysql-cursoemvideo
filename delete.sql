
DELETE FROM cursos
WHERE idcurso = '8';
-- Apaga o registro onde o id do curso é 8 (chave primária)

DELETE FROM cursos
WHERE ano = '2018'
LIMIT 3;
-- Apaga até 3 registros onde o ano é 2018

DELETE FROM nome_da_tabela;
-- Apagar todos os dados da tabela (pode usar WHERE)

TRUNCATE TABLE nome_da_tabela;
-- Apagar todos os dados da tabela (mais rápido, sem WHERE)

DROP TABLE nome_da_tabela;
-- Apagar a tabela inteira (estrutura + dados)

DROP DATABASE nome_do_banco;
-- Apagar o banco de dados inteiro

ALTER TABLE nome_da_tabela DROP COLUMN nome_da_coluna;
-- Apagar uma coluna específica da tabela
