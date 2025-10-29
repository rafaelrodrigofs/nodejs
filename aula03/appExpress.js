
// COM EXPRESS

var express = require('express');
var app = express();

app.get('/', (req, res) => {
    res.sendFile(__dirname + '/html/index.html');
    console.log('Pasta do arquivo: ', __dirname);
});

app.get('/sobre', (req, res) => {
    res.sendFile(__dirname + '/html/sobre.html');
    console.log('Pasta do arquivo: ', __dirname);
});

app.get('/usuario', (req, res) => {
    res.send(req.body)
});

app.listen(8081, () => {
    console.log('Servidor rodando na porta 8081 http://localhost:8081');
});
