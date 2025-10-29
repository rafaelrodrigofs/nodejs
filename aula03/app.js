// SEM EXPRESS
var http = require('http');

// req é igual pedido/entrada
// res é igual resposta/saída
http.createServer((req, res) => {
    // console.log( 'URL: ', req.url)
    // console.log( 'Método: ', req.method)
    // console.log( 'Headers: ', req.headers)
    res.writeHead(200, { 'Content-Type': 'text/html' })
    res.end('<h1>Olá, mundo!</h1>')
    
}).listen(8080);

console.log('Servidor rodando na porta 8081');
