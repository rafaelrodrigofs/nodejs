<h1 align="center">🟡 Aula 03 — Servidor HTTP nativo vs Express e conexão com MySQL (Sequelize)</h1>

<p align="center">
  <img src="https://nodejs.org/static/images/logo.svg" alt="Node.js logo" width="90"/>
  &nbsp;&nbsp;&nbsp;
  <img src="https://expressjs.com/images/express-facebook-share.png" alt="Express logo" width="85"/>
  &nbsp;&nbsp;&nbsp;
  <img src="https://sequelize.org/img/logo.svg" alt="Sequelize logo" width="110"/>
  &nbsp;&nbsp;&nbsp;
  <img src="https://www.mysql.com/common/logos/logo-mysql-170x115.png" alt="MySQL logo" width="88"/>
</p>

<hr />

## 🎯 Objetivos

- 🚦 Comparar servidor HTTP nativo do Node.js com Express.
- 🗂️ Servir páginas estáticas com <code>res.sendFile</code>.
- 🛢️ Testar conexão com MySQL usando Sequelize.
- 🧾 Executar scripts SQL básicos (CRUD) para a tabela <code>usuario</code>.

---

## 📝 Pré-requisitos

- <strong>Node.js</strong> instalado
- <strong>MySQL</strong> em execução e credenciais válidas (para parte 3 e SQL)
- (Opcional) Cliente MySQL no terminal ou acesso ao phpMyAdmin (Wamp)

---

## 📦 Instalação de dependências (Express & Sequelize)

```bash
cd C:\wamp64\www\nodejs2\aula03
npm install
```

---

## 1️⃣ Parte 1 — HTTP nativo

**Arquivo:** <code>app.js</code>

- Cria um servidor HTTP simples e retorna HTML diretamente.

**Como executar:**
```bash
node app.js
```

**Acessar em:** [http://localhost:8080](http://localhost:8080)  
<sub>*Obs: o código faz <code>listen(8080)</code>; a mensagem de log cita 8081, ajuste se desejar.*</sub>

**Saída HTML esperada:**
```html
<h1>Olá, mundo!</h1>
```

---

## 2️⃣ Parte 2 — Utilizando Express

**Arquivo:** <code>appExpress.js</code>

**Rotas:**
- <code>GET /</code> → envia <code>html/index.html</code>
- <code>GET /sobre</code> → envia <code>html/sobre.html</code>
- <code>GET /usuario</code> → retorna <code>req.body</code> (exige middleware!)

**Como executar:**
```bash
node appExpress.js
```

**Acessar:**
- [http://localhost:8081/](http://localhost:8081/)
- [http://localhost:8081/sobre](http://localhost:8081/sobre)
- [http://localhost:8081/usuario](http://localhost:8081/usuario) <sub>(para receber JSON, adicione o middleware abaixo)</sub>

**Middleware recomendado (para <code>req.body</code>):**
```js
// No topo, após criar app
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
```

**Estrutura sugerida de HTML:**
- <code>html/index.html</code>
- <code>html/sobre.html</code>

---

## 3️⃣ Parte 3 — Testando MySQL com Sequelize

**Arquivo:** <code>test.js</code>

- Tenta autenticar no banco <code>antigo</code> com usuário <code>root</code> (sem senha) em <code>localhost</code>.

**Como executar:**
```bash
node test.js
```

**Como configurar:**
```js
const sequelize = new Sequelize('NOME_BANCO', 'USUARIO', 'SENHA', {
  host: 'localhost',
  dialect: 'mysql'
});
```

**Saídas esperadas:**
- ✅ Sucesso: <code>Conexão estabelecida com sucesso.</code>
- ❌ Erro: <code>Erro ao conectar ao banco de dados: ...</code>

---

## 4️⃣ Parte 4 — Scripts SQL (CRUD) na pasta <code>sql/</code>

Arquivos:
- <code>01_criarTabela.sql</code> — cria a tabela <code>usuario</code>
- <code>02_inserirDados.sql</code> — insere registros de exemplo
- <code>03_buscarDados.sql</code> — consultas (SELECT) com filtros comuns
- <code>04_deletarDados.sql</code> — exemplos de exclusão (DELETE)
- <code>05_atualizarDados.sql</code> — exemplos de atualização (UPDATE)

Tabela esperada:
```sql
CREATE TABLE usuario(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    idade INT NOT NULL
);
```

### Como executar os scripts

- Via phpMyAdmin (Wamp):
  - Abra `http://localhost/phpmyadmin`, selecione o banco, vá em “SQL”, cole o conteúdo do arquivo e execute.

Dicas:
- Sempre valide a base de dados selecionada com `SELECT DATABASE();`.
- Antes de `DELETE`/`UPDATE`, rode um `SELECT` com o mesmo `WHERE` para conferir os registros afetados.
- O `email` é `UNIQUE`: evite duplicatas ao inserir/atualizar.

---