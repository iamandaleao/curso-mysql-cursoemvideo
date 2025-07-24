-- INSERIR DADOS
-- INSERT INTO pessoas VALUES: insere dados na tabela "pessoas"
-- DEFAULT pode ser escrito em minúsculo ou maiúsculo, e permite que o MySQL insira o valor padrão (ex: auto_increment)
-- É possível inserir várias linhas ao mesmo tempo, separando cada linha com vírgula
INSERT INTO pessoas VALUES
(DEFAULT, 'Amanda', '1975-4-22', 'M', '99.0', '2.15', 'Brasil'),
(DEFAULT, 'Beatriz', '1999-12-3', 'M', '87', '2', DEFAULT),
(DEFAULT, 'Leao', '1987-11-12', 'F', '75.4', '1.66', 'EUA');
