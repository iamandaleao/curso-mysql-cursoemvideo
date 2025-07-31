-- Lista com o nome e nacionalidade de todos os homens que têm "Silva" no nome,
-- não nasceram no Brasil e pesam menos de 100kg:
-- 'Herisson Silva', 'EUA'

SELECT nome, nacionalidade 
FROM gafanhotos 
WHERE sexo = 'M'
  AND nome LIKE '%Silva%' 
  AND nacionalidade != 'Brasil' 
  AND peso < 100;
