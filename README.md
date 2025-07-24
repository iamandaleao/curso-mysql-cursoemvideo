```sql
-- CRIAÇÃO DE BANCO DE DADOS
-- CREATE DATABASE cadastro: cria um novo banco de dados chamado "cadastro"
-- DEFAULT CHARACTER SET utf8: define o uso do conjunto de caracteres UTF-8
-- DEFAULT COLLATE utf8_general_ci: define comparações que ignoram maiúsculas e minúsculas

CREATE DATABASE cadastro
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

-- INSERINDO DADOS
-- INSERT INTO pessoas VALUES: insere dados na tabela "pessoas"
-- DEFAULT pode ser escrito em minúsculo ou maiúsculo, e permite que o MySQL insira o valor padrão (ex: auto_increment)
-- É possível inserir várias linhas ao mesmo tempo, separando cada linha com vírgula
INSERT INTO pessoas VALUES
(DEFAULT, 'Cláudio', '1975-4-22', 'M', '99.0', '2.15', 'Brasil'),
(DEFAULT, 'Pedro', '1999-12-3', 'M', '87', '2', DEFAULT),
(DEFAULT, 'Janaína', '1987-11-12', 'F', '75.4', '1.66', 'EUA');

-- SELECT * FROM pessoas: mostra todos os dados da tabela "pessoas"
SELECT * FROM pessoas;

-- ALTERANDO TABELAS
-- ALTER TABLE cursos: altera a tabela existente "cursos"
-- ADD COLUMN idcurso INT FIRST: adiciona a coluna "idcurso" na primeira posição
-- ADD PRIMARY KEY (idcurso): define "idcurso" como chave primária
-- CHANGE COLUMN nome novo_nome VARCHAR(50): renomeia ou altera o tipo de uma coluna
-- RENAME TO cursos_novos: renomeia a tabela para "cursos_novos"
ALTER TABLE cursos
ADD COLUMN idcurso INT FIRST,
ADD PRIMARY KEY (idcurso);

-- CRIAÇÃO DE TABELA
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

-- EXCLUINDO TABELAS
-- DROP TABLE cursos: apaga a tabela "cursos" completamente
DROP TABLE cursos;

-- ATALHO
-- Ctrl + A: seleciona todo o conteúdo do editor (útil para apagar ou copiar tudo)

-- TIPOS DE DADOS PRIMITIVOS NO MYSQL (imagem)

-- NUMÉRICO
-- Inteiro: TinyInt, SmallInt, Int, MediumInt, BigInt → números sem casas decimais, com diferentes faixas
-- Real: Decimal, Float, Double, Real → números com casas decimais
-- Lógico: Bit, Boolean → valores lógicos (verdadeiro ou falso)

-- DATA/TEMPO
-- Date: data (AAAA-MM-DD)
-- DateTime: data e hora (AAAA-MM-DD HH:MM:SS)
-- TimeStamp: data e hora (com atualização automática)
-- Time: hora (HH:MM:SS)
-- Year: ano (formato YYYY)

-- LITERAL
-- Caractere: Char, VarChar → texto curto (fixo ou variável)
-- Texto: TinyText, Text, MediumText, LongText → textos longos
-- Binário: TinyBlob, Blob, MediumBlob, LongBlob → dados binários (como arquivos ou imagens)
-- Coleção: Enum, Set → valores pré-definidos (listas)

-- ESPACIAL
-- Geometry, Point, Polygon, MultiPolygon → dados geográficos (mapas, coordenadas, etc)

```
