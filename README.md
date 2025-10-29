<h2 align="center">🚀 Primeiro Contato com Node.js</h2>

<p align="center">
  <img src="https://nodejs.org/static/images/logo.svg" alt="Node.js logo" width="90"/>
</p>

---

<p align="center">
  <b>🟢 <a href="#aula01-introducao-ao-nodejs--javascript-basico">aula01 - Introdução ao Node.js & JavaScript Básico</a></b> &nbsp; | &nbsp;
  <b>🟢 <a href="#aula02-modulos-no-nodejs-commonjs">aula02 - Módulos no Node.js (CommonJS)</a></b> &nbsp; | &nbsp;
  <b>🟢 <a href="#aula03-servidor-http-nativo-vs-express-e-conexao-com-mysql-sequelize">aula03 - Servidor HTTP nativo vs Express & MySQL (Sequelize)</a></b>
</p>

---

## O que é Node.js?

Node.js é um ambiente de execução para JavaScript fora do navegador, construído sobre o motor V8 (do Chrome). Ele permite rodar código JavaScript no servidor e possui um rico ecossistema de pacotes por meio do **Node Package Manager (npm)**.

### Componentes principais

- <b>V8</b>: Motor de JavaScript desenvolvido pelo Google para o Chrome.
- <b>npm</b>: Gerenciador de pacotes oficial do Node.js, utilizado para instalar e gerenciar bibliotecas e utilitários.
- <b>libuv</b>: Biblioteca multiplataforma que fornece operações de I/O assíncrono, como manipulação de arquivos e redes.

> <b>Resumo:</b>  
> <code>Node.js = V8 + libuv</code>

---

## 🧭 Instalação do Node.js

1. **Faça o download**
   <br/>
   Acesse o <a href="https://nodejs.org/en/download" target="_blank">site oficial do Node.js</a> e baixe a versão recomendada para seu sistema.

2. **Execute o instalador**
   <br/>
   Siga as instruções apresentadas. O Node.js já instala também o <b>npm</b> automaticamente.

3. **Verifique a instalação**  
   Abra o terminal (Prompt no Windows, Terminal no macOS/Linux) e digite:
   ```bash
   node -v
   npm -v
   ```
   Se retornarem versões, a instalação foi concluída com sucesso!

4. **Configure seu projeto (opcional)**  
   <br/>
   Para iniciar rapidamente um projeto Node.js, crie a pasta do projeto, navegue até ela no terminal e execute:
   ```bash
   npm init -y
   ```
   Isso criará um arquivo <code>package.json</code> com as configurações padrão.

---

## 📦 Sobre o npm

O <b>npm</b> é o gerenciador de pacotes do Node.js – a maior coleção de pacotes reutilizáveis do mundo. Use-o para instalar dependências, rodar scripts e organizar seu projeto.

🔗 <a href="https://www.npmjs.com/" target="_blank">https://www.npmjs.com/</a>

---

## 📚 Sumário das Aulas

- <details id="aula01-introducao-ao-nodejs--javascript-basico" open>
    <summary><b>🟢 Aula 01 - Introdução ao Node.js & JavaScript Básico</b></summary>
    <ul>
      <li>Primeiro script JS com Node.js</li>
      <li>Execução no terminal</li>
      <li>Saída no console, variáveis, funções</li>
    </ul>
  </details>

- <details id="aula02-modulos-no-nodejs-commonjs">
    <summary><b>🟢 Aula 02 - Módulos no Node.js (CommonJS)</b></summary>
    <ul>
      <li>Como importar/exportar módulos com <code>require</code> e <code>module.exports</code></li>
      <li>Organização do código em arquivos separados</li>
    </ul>
  </details>

- <details id="aula03-servidor-http-nativo-vs-express-e-conexao-com-mysql-sequelize">
    <summary><b>🟢 Aula 03 - Servidor HTTP nativo vs Express & MySQL (Sequelize)</b></summary>
    <ul>
      <li>Criação de servidor HTTP com Node.js puro</li>
      <li>Usando Express para rotas e páginas</li>
      <li>Testando conexão MySQL via Sequelize</li>
    </ul>
  </details>

