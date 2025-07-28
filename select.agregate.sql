-- ========================
-- FUNÇÕES DE AGREGAÇÃO
-- ========================

-- Mostra o maior valor da coluna "carga"
SELECT MAX(carga) FROM cursos;

-- Mostra o maior valor da coluna "totaulas" no ano de 2016
SELECT MAX(totaulas) FROM cursos WHERE ano = '2016';

-- Mostra o menor valor da coluna "totaulas" com o nome correspondente
SELECT nome, MIN(totaulas) FROM cursos WHERE ano = '2016';
-- Obs: Se houver mais de um curso com o mesmo mínimo, retorna só um

-- Soma todos os valores da coluna "totaulas" para o ano de 2016
SELECT SUM(totaulas) FROM cursos WHERE ano = '2016';

-- Retorna a média dos valores da coluna "totaulas"
SELECT AVG(totaulas) FROM cursos;
