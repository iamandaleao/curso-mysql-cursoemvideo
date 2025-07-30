-- Lista com os dados de todas as mulheres que nasceram no Brasil e cujo nome começa com a letra J:
-- '33', 'Jarismar Andrade', 'Dentista', '2000-06-23', 'F', '63.70', '1.33', 'Brasil'

SELECT * FROM gafanhotos 
WHERE sexo = 'F' 
  AND nacionalidade = 'Brasil' 
  AND nome LIKE 'J%';
