-- Consulta que retorna a quantidade de gafanhotos homens e mulheres nascidos após 01/01/2005
SELECT sexo, COUNT(*) 
FROM gafanhotos 
WHERE nascimento > '2005-01-01' 
GROUP BY sexo;
