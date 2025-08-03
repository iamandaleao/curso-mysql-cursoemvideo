-- Consulta que retorna a altura e o total de gafanhotos com mais de 100kg
-- e altura acima da média de todos os cadastrados

-- Filtra somente os gafanhotos com peso acima de 100kg
-- Agrupa os resultados por altura
-- Conta quantos gafanhotos há em cada grupo de altura
-- Filtra apenas os grupos cuja altura é maior que a média geral de altura (subconsulta)

SELECT altura, COUNT(*) AS total             -- retorna altura e total de pessoas nesse grupo
FROM gafanhotos                              -- da tabela gafanhotos
WHERE peso > 100.00                          -- considera apenas os que pesam mais de 100kg
GROUP BY altura                              -- agrupa os registros por altura
HAVING altura > (SELECT AVG(altura) FROM gafanhotos);  -- só mostra alturas acima da média
