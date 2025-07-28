-- Aula 13 – SELECT (Parte 3)
-- Trabalhando com GROUP BY e HAVING

-- ========================
-- AGRUPAMENTO COM GROUP BY
-- ========================

-- Agrupa os cursos pela quantidade de "totaulas" e mostra quantos cursos existem em cada grupo
SELECT totaulas, COUNT(*) FROM cursos
GROUP BY totaulas
ORDER BY totaulas;

-- Para visualizar os detalhes dos cursos que têm 12 aulas:
SELECT * FROM cursos WHERE totaulas = 12;

-- Outros exemplos de filtragem por totaulas:
SELECT * FROM cursos WHERE totaulas > 20;
SELECT * FROM cursos WHERE totaulas = 30;

-- ========================
-- AGRUPAMENTO POR OUTRA COLUNA
-- ========================

-- Exibe a quantidade de cursos (count) por carga horária, apenas onde totaulas = 30
-- Exemplo:
-- 2 cursos com 40h e 4 cursos com 60h, ambos com 30 aulas
SELECT carga, COUNT(nome) FROM cursos
WHERE totaulas = 30
GROUP BY carga;

-- ========================
-- USANDO HAVING APÓS AGRUPAMENTO
-- ========================

-- HAVING é usado para filtrar resultados depois do GROUP BY
-- Só pode ser usado com colunas agregadas (COUNT, SUM, etc.)

-- Exemplo: mostrar somente totaulas com mais de 1 curso
SELECT totaulas, COUNT(*) FROM cursos
GROUP BY totaulas
HAVING COUNT(*) > 1;
