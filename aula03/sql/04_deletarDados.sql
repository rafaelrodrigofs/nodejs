-- 1. Excluir o usuário com id igual a 1
DELETE FROM usuario WHERE id = 1;

-- 2. Excluir todos os usuários com idade menor que 23 anos
DELETE FROM usuario WHERE idade < 23;

-- 3. Excluir usuários com email terminando em '@example.com'
DELETE FROM usuario WHERE email LIKE '%@example.com';

-- 4. Excluir todos os usuários com nome 'Ana'
DELETE FROM usuario WHERE nome = 'Ana';

-- 5. Verificar se a exclusão foi realizada
SELECT * FROM usuario WHERE id = 1;