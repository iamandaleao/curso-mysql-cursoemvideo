-- ALTER TABLE
-- ALTER TABLE cursos: altera a tabela existente "cursos"
-- ADD COLUMN idcurso INT FIRST: adiciona a coluna "idcurso" na primeira posição
-- ADD PRIMARY KEY (idcurso): define "idcurso" como chave primária
-- CHANGE COLUMN nome novo_nome VARCHAR(50): renomeia ou altera o tipo de uma coluna
-- RENAME TO cursos_novos: renomeia a tabela para "cursos_novos"
ALTER TABLE cursos
ADD COLUMN idcurso INT FIRST,
ADD PRIMARY KEY (idcurso);
