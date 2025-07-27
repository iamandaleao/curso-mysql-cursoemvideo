-- Aula 11 – SELECT (Parte 1)
-- Comando SELECT: o mais famoso da SQL
-- Utilizado para buscar dados no banco

-- Selecionando todas as colunas:
SELECT * FROM cursos;

-- Selecionando colunas específicas:
SELECT nome, carga, ano FROM cursos;

-- Ordenando os resultados:
ORDER BY nome;                      -- Ordem alfabética (ASC)
ORDER BY nome DESC;                -- Ordem alfabética inversa (DESC)
ORDER BY ano;                      -- Ordem crescente por ano
ORDER BY ano, nome;                -- Primeiro ordena por ano, depois por nome
ORDER BY ano DESC, nome ASC;       -- Ano decrescente, nome crescente

-- ATENÇÃO:
-- DESC como comando = DESCRIBE (ex: DESCRIBE cursos;)
-- DESC como parâmetro no ORDER BY = descendente
-- ASC = ascendente (padrão, pode omitir)

-- Filtrando linhas (condições):
SELECT nome, carga FROM cursos
WHERE ano = 2016;

-- O ano não será exibido, pois não foi incluído no SELECT
-- Esse resultado é chamado de "resultset"

-- Comparações numéricas:
WHERE ano <= 2015;
WHERE ano > 2016;
WHERE ano >= 2016;
WHERE ano != 2016;
WHERE ano <> 2016;

-- Intervalos:
WHERE ano BETWEEN 2014 AND 2016;

-- Valores específicos:
WHERE ano IN (2014, 2016, 2018);

-- Combinações de testes:
WHERE carga > 35 AND totaulas < 30;
WHERE carga > 35 OR totaulas < 30;

-- O comando SELECT faz parte da DML (Data Manipulation Language)

-- Consulta = Query (pergunta)
