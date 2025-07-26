
DELETE FROM cursos
WHERE idcurso = '8';
-- Apaga o registro onde o id do curso é 8 (chave primária)

DELETE FROM cursos
WHERE ano = '2018'
LIMIT 3;
-- Apaga até 3 registros onde o ano é 2018
