-- ========================
-- CONTAGEM DE REGISTROS COM COUNT
-- ========================

-- Conta quantas linhas têm carga maior que 40
SELECT COUNT(*) FROM cursos WHERE carga > 40;

-- Pode contar valores de uma coluna específica
SELECT COUNT(nome) FROM cursos WHERE carga > 40;
