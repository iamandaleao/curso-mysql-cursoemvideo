-- Aula 14 – Modelo Relacional e DER (Diagrama Entidade-Relacionamento)

-- ========================
-- CONCEITOS FUNDAMENTAIS
-- ========================

-- ENTIDADE:
-- Representa um objeto do mundo real no banco de dados.
-- Exemplo: cursos, alunos, gafanhotos, produtos, clientes.
-- Cada entidade vira uma TABELA no banco.

-- ATRIBUTOS:
-- São as características da entidade.
-- Exemplo: nome, idade, cpf, carga, totaulas.
-- Cada atributo vira uma COLUNA na tabela.

-- CHAVE PRIMÁRIA:
-- É o identificador único da entidade (nunca se repete).
-- Exemplo: CPF de uma pessoa, ID do curso.

-- RELACIONAMENTO:
-- É a ligação entre duas ou mais entidades.
-- Quando entidades se relacionam, criamos RELACIONAMENTOS no DER.
-- Exemplo: alunos fazem cursos; clientes compram produtos.

-- DIAGRAMA ENTIDADE-RELACIONAMENTO (DER ou E-R):
-- Representa graficamente:
-- - Entidades (tabelas)
-- - Atributos (colunas)
-- - Relacionamentos (ligações entre tabelas)
-- - Cardinalidade (quantidade de registros relacionados)

-- ========================
-- CARDINALIDADE
-- ========================

-- Indica quantos registros de uma entidade se relacionam com outra.

-- Exemplos:
-- 1:1 (um para um) → Ex: esposo e esposa
-- 1:N (um para muitos) → Ex: funcionário e dependentes
-- N:1 (muitos para um) → Ex: vários dependentes de um funcionário
-- N:N (muitos para muitos) → Ex: clientes compram produtos

-- Pode incluir:
-- - Mínimo (0 ou 1)
-- - Máximo (1, N, etc.)
-- Exemplo: 0,1 / 1,1 / 0,N / 1,N

-- ========================
-- CHAVE ESTRANGEIRA (FOREIGN KEY)
-- ========================

-- Quando a chave primária de uma tabela aparece em outra tabela para criar o relacionamento.
-- Nesse caso, ela vira uma chave estrangeira.

-- Exemplo:
-- Tabela cursos → idcurso (chave primária)
-- Tabela matriculas → idcurso (chave estrangeira que aponta para cursos)
