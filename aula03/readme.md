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

---

## 📝 Pré-requisitos

- <strong>Node.js</strong> instalado
- <strong>MySQL</strong> em execução e credenciais válidas (para parte 3)

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
- Certifique-se de que o banco <code>antigo</code> exista.
- Ajuste o trecho conforme necessário:
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

## 💡 Dicas e observações

- ⚠️ Em <code>app.js</code>, o servidor escuta <code>8080</code> mas o log mostra <code>8081</code> — padronize!
- 🧰 Em <code>appExpress.js</code>, <code>req.body</code> só funciona com <code>express.json()</code> ou <code>express.urlencoded()</code>.
- 📂 <code>res.sendFile()</code> precisa de caminho absoluto — use <code>__dirname + '/html/...'</code>.
- ℹ️ Para servir arquivos estáticos (css/js), utilize <code>app.use(express.static('public'))</code>.

---

## 🏋️‍♂️ Exercícios sugeridos

1. 🔧 Corrija a mensagem de porta em <code>app.js</code> (ou troque para 8081).
2. 🔄 Adicione os middlewares body parser em <code>appExpress.js</code> e teste via:
    ```bash
    curl -X GET http://localhost:8081/usuario -H "Content-Type: application/json" -d "{\"nome\":\"Marcos\"}"
    ```
3. ✨ Crie a rota <code>GET /saudacao/:nome</code> que responde <code>Olá, &lt;nome&gt;!</code>.
4. 🗃️ No Sequelize, crie um modelo simples (<code>Usuario</code>) e sincronize a tabela.
5. 🎨 Sirva arquivos estáticos (css/js) usando <code>express.static('public')</code> (opcional).

---

<p align="center">
  <em>Bons estudos e mãos ao código! 🚀</em>
</p>

