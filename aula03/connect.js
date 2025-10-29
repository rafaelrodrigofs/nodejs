const { Sequelize } = require('sequelize');

const sequelize = new Sequelize('usuario','root',null,{
    host: "localhost",
    dialect: 'mysql'
})

// Criar tabela Postagens caso não exista.
const Postagem = sequelize.define('postagens',{
    titulo: {
        type: Sequelize.STRING
    },
    conteudo: {
        type: Sequelize.TEXT
    }
})

Postagem.create({
    titulo: 'Titulo Qualquer',
    conteudo: 'aldskfjkladsfjdsklfjldsajfklads'
})

const Usuario = sequelize.define('usuarios', {
    nome:{
        type: Sequelize.STRING
    },
    sobrenome:{
        type: Sequelize.STRING
    },
    idade:{
        type: Sequelize.INTEGER
    },
    email:{
        type: Sequelize.STRING
    }
})

Usuario.create({
    nome: 'Rafael',
    sobrenome: 'Rodrigo',
    idade: 10,
    email: 'rafaelrodrigo@rafaelrodrigo.com'
})

// Usuario.sync({force: true});

// sequelize.authenticate().then(() => {
//     console.log('Conexão estabelecida com sucesso.');
// }).catch((err) => {
//     console.log('Erro ao conectar ao banco de dados: ', err);
// })