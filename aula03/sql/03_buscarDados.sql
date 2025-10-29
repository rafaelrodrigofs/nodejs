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

-- Exemplos de exclusão (DELETE) na tabela usuario:

