-- Consulta que retorna a quantidade de gafanhotos do sexo feminino com mais de 1.90m de altura
-- Boa prática: use aspas apenas para valores do tipo texto, não para números

SELECT COUNT(*) 
FROM gafanhotos 
WHERE sexo = 'F' AND altura > 1.90;

