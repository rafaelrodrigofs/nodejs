

import express from 'express'
import expressHandleBars from 'express-handlebars'
import sequelize from './config/connect.js'

const { engine } = expressHandleBars
const app = express()


// Config 
// Template Engine
app.engine('handlebars', engine({ defaultLayout: 'main' }))
app.set('view engine', 'handlebars')
app.set('views', './views')


app.listen(8080, () => { console.log('Servidor rodando na url 8080') })