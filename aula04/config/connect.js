import { Sequelize } from "sequelize";

const sequelize = new Sequelize('usuario', 'root', null, {
    host: 'localhost',
    dialect: 'mysql'
})

await sequelize.authenticate();
console.log('OK')

export default sequelize