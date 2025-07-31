-- Qual é a média de peso dos gafanhotos cadastrados:
-- 73.742419

SELECT AVG(peso) FROM gafanhotos;


-- Lista com nome e peso de todos os gafanhotos e, no final, a média de peso:
SELECT nome, peso FROM gafanhotos
UNION ALL
SELECT 'Média', AVG(peso) FROM gafanhotos;

