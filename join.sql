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
