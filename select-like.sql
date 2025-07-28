-- Aula 12 – SELECT (Parte 2)
-- Aprendendo a utilizar o SELECT com LIKE, DISTINCT, COUNT e funções de agregação

-- ========================
-- FILTROS COM LIKE
-- ========================

-- Mostra palavras que começam com "P"
WHERE nome LIKE 'P%';

-- Pode ser minúsculo ou maiúsculo
-- LIKE significa "parecido"
-- % substitui nenhum ou vários caracteres

-- Palavras que terminam com "p"
WHERE nome LIKE '%p';

-- Palavras que contêm a letra "A" em qualquer lugar
WHERE nome LIKE '%A%';
-- Inclusive com acento, se o banco estiver com charset UTF-8

-- Palavras que **não** contêm a letra "A"
WHERE nome NOT LIKE '%A%';

-- Atualizando um nome com acento (para teste do LIKE)
UPDATE cursos SET nome = 'PÁOO' WHERE idcursos = '9';

-- LIKE com padrões avançados:
WHERE nome LIKE 'ph%p';
-- Começa com "ph" e termina com "p"

WHERE nome LIKE 'ph%p%';
-- Começa com "ph", tem "p" e pode ter qualquer coisa depois

WHERE nome LIKE 'ph%p_';
-- Começa com "ph", tem "p" e **obrigatoriamente** um caractere depois
-- "_" representa exatamente um caractere
