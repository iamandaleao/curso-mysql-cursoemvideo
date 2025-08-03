-- Lista com os países de origem e o total de gafanhotos nascidos fora do Brasil
-- WHERE filtra apenas quem não é do Brasil
-- GROUP BY agrupa por nacionalidade
-- HAVING filtra os grupos com mais de 3 pessoas

SELECT nacionalidade, COUNT(*) AS total 
FROM gafanhotos 
WHERE nacionalidade != 'Brasil' 
GROUP BY nacionalidade 
HAVING total > 3;
