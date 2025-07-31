-- Qual é a maior altura entre gafanhotos homens que moram no Brasil:
-- 'Tiago Ulisses', 2,35

SELECT nome, altura 
FROM gafanhotos 
WHERE sexo = 'M' 
  AND nacionalidade = 'Brasil' 
  AND altura = (
    SELECT MAX(altura) 
    FROM gafanhotos 
    WHERE sexo = 'M' AND nacionalidade = 'Brasil'
  );
  
-- Forma também funciona e é até mais direta:
SELECT nome, altura 
FROM gafanhotos 
WHERE sexo = 'M' 
  AND nacionalidade = 'Brasil' 
ORDER BY altura DESC 
  LIMIT 1;
