## Exemplos de atualização (UPDATE) na tabela usuario:

-- 1. Atualizar o nome do usuário com id igual a 1
UPDATE usuario SET nome = 'João Silva' WHERE id = 1;

-- 2. Atualizar a idade de todos os usuários com nome 'Maria'
UPDATE usuario SET idade = 26 WHERE nome = 'Maria';

-- 3. Atualizar email e idade de um usuário específico
UPDATE usuario SET email = 'novoemail@example.com', idade = 31 WHERE id = 3;

-- 4. Atualizar a idade adicionando 1 ano a todos os usuários com idade maior que 25
UPDATE usuario SET idade = idade + 1 WHERE idade > 25;

-- 5. Atualizar o nome de todos os usuários cujo email termina em '@example.com'
UPDATE usuario SET nome = 'Nome Atualizado' WHERE email LIKE '%@example.com';

-- 6. Atualizar múltiplas colunas de um usuário específico
UPDATE usuario SET nome = 'Ana Santos', email = 'ana.santos@example.com', idade = 24 WHERE id = 4;

-- 7. Verificar se a atualização foi realizada
SELECT * FROM usuario WHERE id = 1;