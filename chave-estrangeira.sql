-- Aula 15 – Chaves Estrangeiras e JOIN
-- Aprendendo sobre os tipos de JOINs e os princípios das transações ACID

-- ========================
-- TIPOS DE JOIN
-- ========================

-- INNER JOIN:
-- Retorna apenas os registros que têm correspondência nas duas tabelas envolvidas

-- LEFT JOIN (OUTER JOIN):
-- Retorna todos os registros da tabela da esquerda, mesmo que não haja correspondência na tabela da direita

-- RIGHT JOIN (OUTER JOIN):
-- Retorna todos os registros da tabela da direita, mesmo que não haja correspondência na tabela da esquerda

-- ========================
-- ENGINES DE ARMAZENAMENTO
-- ========================

-- Existem diferentes engines para o MySQL:

-- MYISAM:
-- Engine antiga e mais rápida, porém NÃO suporta:
-- - Chaves estrangeiras
-- - Regras ACID

-- INNODB:
-- Suporta chaves estrangeiras e as regras ACID

-- XTRADB:
-- Baseada no InnoDB, também suporta ACID, usada no MariaDB

-- ========================
-- TRANSACÕES E O CONCEITO ACID
-- ========================

-- Toda ação que o banco executa é considerada uma transação.
-- Para ser confiável, ela deve seguir os princípios da sigla ACID:

-- A – Atomicidade:
-- A transação não pode ser dividida em subtarefas.
-- Ou tudo é executado com sucesso, ou nada é considerado.
-- Exemplo: se uma pessoa só arruma metade do quarto, a tarefa não é válida.

-- C – Consistência:
-- Se o banco estava consistente antes da transação, deve continuar após.
-- Se ocorrer alguma falha, o banco deve retornar ao estado anterior automaticamente.

-- I – Isolamento:
-- Transações simultâneas devem ocorrer de forma isolada, como se fossem executadas separadamente.

-- D – Durabilidade:
-- Uma vez confirmada, a transação deve permanecer registrada, mesmo em caso de falha de energia ou sistema.

-- ========================
-- SOBRE O USO DE ENGINES
-- ========================

-- MYISAM não é compatível com ACID nem com chaves estrangeiras.

-- INNODB e XTRADB suportam:
-- - Chaves estrangeiras (garantem integridade referencial)
-- - Princípios ACID

-- No momento da criação da tabela, você pode especificar a engine:
-- Exemplo:
-- CREATE TABLE nome_tabela (
--   ...
-- ) ENGINE = InnoDB;

-- No MySQL moderno, se você não especificar a engine, o padrão já será o InnoDB.
