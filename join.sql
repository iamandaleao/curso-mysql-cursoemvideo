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

-- Aula 15 – JOIN com Alias e Tipos LEFT/RIGHT

-- ========================
-- INNER JOIN (ou apenas JOIN)
-- ========================

-- Retorna apenas os registros onde há correspondência entre as tabelas
-- Neste caso: somente gafanhotos que têm um curso preferido definido

SELECT 
  gafanhotos.nome, 
  cursos.nome, 
  cursos.ano 
FROM gafanhotos 
INNER JOIN cursos 
ON cursos.idcurso = gafanhotos.cursopreferido
ORDER BY gafanhotos.nome;

-- JOIN e INNER JOIN são equivalentes nesse caso

-- ========================
-- USANDO ALIAS PARA SIMPLIFICAR O COMANDO
-- ========================

-- Podemos reduzir o nome das tabelas usando "AS" (alias)
-- Após o FROM e o JOIN, a tabela deve ser nomeada completamente

SELECT 
  g.nome, 
  c.nome, 
  c.ano 
FROM gafanhotos AS g 
INNER JOIN cursos AS c 
ON c.idcurso = g.cursopreferido
ORDER BY g.nome;

-- ========================
-- LEFT JOIN (ou LEFT OUTER JOIN)
-- ========================

-- Retorna todos os registros da tabela à esquerda (gafanhotos),
-- mesmo que não tenham curso preferido associado

SELECT 
  g.nome, 
  c.nome, 
  c.ano 
FROM gafanhotos AS g 
LEFT JOIN cursos AS c 
ON c.idcurso = g.cursopreferido
ORDER BY g.nome;

-- ========================
-- RIGHT JOIN (ou RIGHT OUTER JOIN)
-- ========================

-- Retorna todos os registros da tabela à direita (cursos),
-- mesmo que nenhum gafanhoto tenha escolhido aquele curso

SELECT 
  g.nome, 
  c.nome, 
  c.ano 
FROM gafanhotos AS g 
RIGHT JOIN cursos AS c 
ON c.idcurso = g.cursopreferido
ORDER BY c.nome;

-- Aula 16 – INNER JOIN com várias tabelas

-- Como fazer um JOIN com várias tabelas. Usando o INNER JOIN com três tabelas. Sintaxe do SELECT com JOIN.

-- Seleciona o banco de dados que será usado
USE cadastro;

-- Cria a tabela de relacionamento entre gafanhotos e cursos
CREATE TABLE gafanhoto_assiste_curso (
  id INT NOT NULL AUTO_INCREMENT,       -- ID único da tabela, com incremento automático
  data DATE,                             -- Data em que o curso foi assistido
  idgafanhoto INT,                       -- ID do gafanhoto (chave estrangeira)
  idcurso INT,                           -- ID do curso (chave estrangeira)

  PRIMARY KEY (id),                      -- Define o campo 'id' como chave primária
  FOREIGN KEY (idgafanhoto) REFERENCES gafanhotos(id),  -- Chave estrangeira referenciando tabela gafanhotos
  FOREIGN KEY (idcurso) REFERENCES cursos(idcurso)      -- Chave estrangeira referenciando tabela cursos
) DEFAULT CHARSET = utf8;

-- Insere um registro na tabela com os valores:
-- - default: o campo 'id' será gerado automaticamente
-- - '2014-03-01': data do curso
-- - '1': ID do gafanhoto
-- - '2': ID do curso
INSERT INTO gafanhoto_assiste_curso VALUES 
(DEFAULT, '2014-03-01', '1', '2');

-- Exibe todos os registros da tabela
SELECT * FROM gafanhoto_assiste_curso;

-- Aula Final – Encerrando o Curso Básico de Banco de Dados com JOIN Avançado

-- ========================
-- JOIN ENTRE GAFANHOTOS E gafanhoto_assiste_curso
-- ========================

-- Traz o nome do gafanhoto e o ID do curso assistido
SELECT 
  g.nome, 
  a.idcurso 
FROM gafanhotos AS g
JOIN gafanhoto_assiste_curso AS a 
ON g.id = a.idgafanhoto
ORDER BY g.nome;

-- ========================
-- JOIN COMPLETO ENTRE GAFANHOTOS, TABELA RELACIONAL E CURSOS
-- ========================

-- Traz o nome do gafanhoto e o nome do curso que ele assistiu
SELECT 
  g.nome, 
  c.nome 
FROM gafanhotos AS g
JOIN gafanhoto_assiste_curso AS a 
  ON g.id = a.idgafanhoto
JOIN cursos AS c 
  ON c.idcurso = a.idcurso
ORDER BY g.nome;

-- ========================
-- CONSIDERAÇÕES FINAIS
-- ========================

-- Curso básico de banco de dados com MySQL concluído.
-- Aprendemos:
-- - Criação de tabelas
-- - Tipos de dados
-- - Chaves primárias e estrangeiras
-- - JOINs (INNER, LEFT, RIGHT)
-- - Modelo relacional básico
-- - Criação de relacionamentos entre tabelas

-- Com esses conhecimentos, é possível construir bancos de dados simples e intermediários.

-- Para projetos mais avançados:
-- - Estudar mais profundamente o modelo relacional
-- - Entender tipos de atributos (simples, compostos, derivados)
-- - Criar relacionamentos ternários e complexos
-- - Aplicar normalização e boas práticas de modelagem

-- Esse foi um curso introdutório. Continue se aprofundando para dominar o universo dos bancos de dados!

