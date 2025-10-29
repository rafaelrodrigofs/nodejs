<h1 align="center">🟢 Aula 02 — Módulos no Node.js (CommonJS)</h1>

<p align="center">
  <img src="https://nodejs.org/static/images/logo.svg" alt="Node.js logo" width="120"/>
</p>

---

## 🎯 Objetivos

- 📦 Entender como criar e exportar funções em módulos.
- 🔗 Aprender a importar módulos com <code>require</code>.
- 🗂️ Organizar código em arquivos separados (somar, subtrair, multiplicar, dividir).

---

## 📂 Arquivos da Aula

- <code>somar.js</code>, <code>sub.js</code>, <code>multi.js</code>, <code>div.js</code>: funções que executam operações matemáticas, exportadas via <code>module.exports</code>.
- <code>app.js</code>: arquivo principal que importa as funções e imprime os resultados.

---

## 🧩 Conceitos Principais

- <b>Exportação (CommonJS):</b> usar <code>module.exports</code> para expor uma função/objeto.
- <b>Importação (CommonJS):</b> usar <code>require('./caminho')</code> para trazer o módulo.

---

### 💡 Exemplo de Exportação

```js
// somar.js
var somar = function(a, b) {
  return a + b;
}
module.exports = somar;
```

---

### 💻 Exemplo de Importação e Uso

```js
// app.js
var SomarFunc = require('./somar');
var SubtrairFunc = require('./sub');
var MultiplicarFunc = require('./multi');
var DividirFunc = require('./div');

var a = 10;
var b = 20;

console.log(SomarFunc(a, b));
console.log(SubtrairFunc(a, b));
console.log(MultiplicarFunc(a, b));
console.log(DividirFunc(a, b));
```

---

## ▶️ Como Executar

No PowerShell, navegue até a pasta da aula e rode o arquivo principal:

```bash
cd C:\wamp64\www\nodejs2\aula02
node app.js
```

---

## 💡 Saída Esperada

