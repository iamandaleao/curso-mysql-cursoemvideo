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



-- Aula 16 – Chaves Estrangeiras na Prática e JOIN com Tabelas Relacionadas

-- ========================
-- ABRIR O BANCO DE DADOS
-- ========================
USE cadastro;

-- ========================
-- ADICIONANDO NOVA COLUNA (curso preferido)
-- ========================

-- Precisamos adicionar a coluna "cursopreferido" na tabela "gafanhotos"
-- Essa coluna deve ter o mesmo tipo da chave primária da tabela "cursos" (INT)

ALTER TABLE gafanhotos ADD COLUMN cursopreferido INT;
-- A palavra COLUMN é opcional:
-- ALTER TABLE gafanhotos ADD cursopreferido INT;

-- Podemos definir a posição da nova coluna com:
-- FIRST → adiciona no início
-- AFTER nome_coluna → adiciona após a coluna especificada
-- Caso não informe, a nova coluna será adicionada no final da tabela

-- ========================
-- DEFININDO A CHAVE ESTRANGEIRA
-- ========================

-- Agora vamos transformar a coluna "cursopreferido" em uma chave estrangeira
-- A referência será a chave primária "idcurso" da tabela "cursos"

ALTER TABLE gafanhotos
ADD FOREIGN KEY (cursopreferido)
REFERENCES cursos(idcurso);

-- ========================
-- ATRIBUINDO CURSO PREFERIDO A UM REGISTRO
-- ========================

-- Vamos vincular um curso preferido a um gafanhoto (exemplo: id = 1)
UPDATE gafanhotos SET cursopreferido = 6 WHERE id = 1;

-- Esse valor será refletido na coluna "cursopreferido" do gafanhoto correspondente

-- Também é possível editar manualmente via interface gráfica (Workbench):
-- - Clique na célula da coluna "cursopreferido"
-- - Insira o ID do curso correspondente
-- - Clique em "Apply" no canto inferior direito
-- - Confirme e veja os comandos SQL aplicados automaticamente

-- Visualizar os dados atualizados:
SELECT * FROM gafanhotos;

-- ========================
-- TESTANDO A INTEGRIDADE REFERENCIAL
-- ========================

-- Se tentarmos apagar um curso que está sendo referenciado por algum gafanhoto:

DELETE FROM cursos WHERE idcurso = 6;
-- Resultado: erro!
-- Motivo: integridade referencial — não é permitido apagar um dado referenciado

-- Isso garante que o banco não entre em estado inconsistente
-- Exemplo: se alguém está cursando o curso 6, ele não pode ser apagado

-- Se o curso não estiver sendo usado por ninguém, o DELETE funcionará normalmente
-- Mas haverá quebra na sequência dos IDs (ex: do 8 pula para o 10)

-- ========================
-- USO DO InnoDB (OU XtraDB)
-- ========================

-- O mecanismo InnoDB (ou XtraDB no MariaDB) permite:
-- - Chaves estrangeiras
-- - Regras ACID (transações seguras)

-- MYISAM NÃO oferece suporte a essas garantias

-- Por isso, use InnoDB como engine padrão para suas tabelas:
-- CREATE TABLE ... ENGINE = InnoDB;

-- ========================
-- JOIN ENTRE TABELAS RELACIONADAS
-- ========================

-- Vamos unir dados das tabelas "gafanhotos" e "cursos"
-- Exibindo: nome do gafanhoto, ID do curso preferido, nome do curso e ano

SELECT 
  gafanhotos.nome,
  gafanhotos.cursopreferido,
  cursos.nome AS nome_curso,
  cursos.ano
FROM gafanhotos
JOIN cursos
ON gafanhotos.cursopreferido = cursos.idcurso;

