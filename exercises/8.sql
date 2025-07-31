-- Qual é o menor peso entre as gafanhotas (mulheres) que nasceram fora do Brasil 
-- entre 01/01/1990 e 31/12/2000:
-- 35.90

SELECT MIN(peso) 
FROM gafanhotos 
WHERE sexo = 'F'
  AND nacionalidade != 'Brasil'
  AND nascimento BETWEEN '1990-01-01' AND '2000-12-31';
