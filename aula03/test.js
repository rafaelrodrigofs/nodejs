const Sequelize = require('sequelize');
const sequelize = new Sequelize('antigo', 'root', '', {
    host: 'localhost',
    dialect: 'mysql'
})

sequelize.authenticate().then(() => {
    console.log('Conexão estabelecida com sucesso.');
}).catch((err) => {
    console.log('Erro ao conectar ao banco de dados: ', err);
})