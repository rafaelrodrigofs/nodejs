## Criar a tabela usuario
CREATE TABLE usuario(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    idade INT NOT NULL,
);

## Verificar se a tabela foi criada
SHOW TABLES;

## Inserir dados na tabela usuario
INSERT INTO usuario (
    nome,
    email,
    idade
) VALUES (
    'João','joao@example.com',20,
    'Maria','maria@example.com',25,
    'Pedro','pedro@example.com',30,
    'Ana','ana@example.com',22,
    'Carlos','carlos@example.com',28,
    'Laura','laura@example.com',23,
    'Pedro','pedro@example.com',30,
    'Ana','ana@example.com',22,
    'Carlos','carlos@example.com',28,
    'Laura','laura@example.com',23,
);

## Selecionar todos os dados da tabela usuario
SELECT * FROM usuario;

## Exemplos de busca na tabela usuario:

-- 1. Buscar todos os usuários com idade maior ou igual a 25 anos
SELECT nome FROM usuario WHERE idade >= 25;

-- 2. Buscar usuários com nome igual a 'Lucas'
SELECT nome FROM usuario WHERE nome = 'Lucas';

-- 3. Buscar usuários com email terminando em '@example.com'
SELECT nome, email FROM usuario WHERE email LIKE '%@example.com';

-- 4. Buscar usuários com idade entre 22 e 28 anos
SELECT nome, idade FROM usuario WHERE idade BETWEEN 22 AND 28;

-- 5. Buscar usuários cujo nome comece com a letra 'A'
SELECT nome FROM usuario WHERE nome LIKE 'A%';