## Aprendendo user o modulos em node.js

Para criar um modulo em node.js, você pode usar o comando "module.exports" para exportar a função no seu arquivo.

```javascript
var somar = function(a, b){
    return a + b;
}

module.exports = somar;
```

```javascript
var somar = require('./somar');
var a = 10;
var b = 20;
console.log(somar(a, b));
```

Para usar modulos em node.js, você pode usar o comando "require" para importar o modulo no seu arquivo.