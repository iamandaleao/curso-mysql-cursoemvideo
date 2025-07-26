-- Modificando linhas incorretas

-- SET (define os novos valores)
-- WHERE (condição para aplicar a alteração)
-- UPDATE (atualiza registros existentes)

UPDATE cursos
SET nome = 'HTML5'
WHERE idcurso = '1';
-- Atualiza o nome para 'HTML5' onde o id do curso é 1

UPDATE cursos
SET nome = 'PHP', ano = '2015'
WHERE idcurso = '4';
-- Atualiza o nome para 'PHP' e o ano para 2015 onde o id é 4

UPDATE cursos
SET nome = 'Java', carga = '40', ano = '2015'
WHERE idcurso = '5'
LIMIT 1;
-- Atualiza nome, carga e ano do curso com id 5, limitando a 1 linha

-- A ordem dos campos no comando não interfere na execução
