-- Aula 8 – Gerenciando Cópias de Segurança MySQL

-- EXPORTANDO UM BANCO DE DADOS (GERAR DUMP)
-- No MySQL Workbench:
-- Vá em Server > Data Export
-- Selecione o banco de dados desejado

-- O termo "dump" significa uma cópia (backup) do banco de dados
-- Exemplo: "Gera um dump desse banco pra mim"

-- O banco de dados está num servidor (no caso do AMP, um servidor local)
-- Você tem acesso ao servidor e autorização para gerar o dump

-- Opções de exportação:
-- - Estrutura e dados da tabela
-- - Tipo da exportação: pasta inteira do projeto ou arquivo único
-- - Pode renomear o arquivo ou deixar o nome padrão
-- Clique em "Start Export"
-- Vai pedir usuário e senha (usuário padrão: root / senha: em branco)
-- O dump será gerado em poucos segundos

-- Localize o arquivo gerado no seu computador
-- Abra com o Notepad++ (melhor para visualizar)
-- O arquivo conterá os comandos SQL que criaram o banco

-- APÓS EXPORTAR, PODEMOS APAGAR O BANCO DE DADOS

DROP DATABASE cadastro;
DROP DATABASE teste;

-- PARA IMPORTAR O BANCO DE DADOS (DUMP)

-- No MySQL Workbench:
-- Vá em Server > Data Import
-- Selecione "Import from self-contained file"
-- Clique nos três pontos (...) e selecione o arquivo dump
-- Clique em "Start Import"
-- Vai pedir a senha novamente (pressione Enter se estiver vazia)

-- Após importado, atualize a visualização dos bancos
-- Use o banco com:

USE cadastro;

-- Ver tabelas existentes:

SHOW TABLES;

-- Ver estrutura da tabela:

DESCRIBE cursos;
DESCRIBE gafanhotos;

-- Ver conteúdo da tabela:

SELECT * FROM cursos;
SELECT * FROM gafanhotos;

-- Pressione Ctrl + Enter para executar os comandos
