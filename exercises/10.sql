-- Lista com as profissões dos gafanhotos e seus respectivos quantitativos
-- GROUP BY agrupa os registros pela coluna 'profissao'
-- COUNT(*) conta quantos registros existem em cada grupo
SELECT profissao, COUNT(*) AS total 
FROM gafanhotos 
GROUP BY profissao;

