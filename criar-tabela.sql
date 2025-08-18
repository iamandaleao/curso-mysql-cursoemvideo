-- CRIAR TABELA
-- CREATE TABLE IF NOT EXISTS: cria a tabela apenas se ela ainda não existir
-- nome VARCHAR(30) NOT NULL UNIQUE: texto de até 30 caracteres, obrigatório e sem repetição
-- descricao TEXT: campo de texto longo
-- carga INT UNSIGNED: inteiro positivo
-- totaulas INT: número inteiro
-- ano YEAR DEFAULT '2025': ano com valor padrão 2025
-- DEFAULT CHARSET = utf8: usa UTF-8 para aceitar acentos

CREATE TABLE IF NOT EXISTS cursos (
  idcurso INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(30) NOT NULL UNIQUE,
  descricao TEXT,
  carga INT UNSIGNED,
  totaulas INT,
  ano YEAR DEFAULT '2025'
) DEFAULT CHARSET = utf8;
