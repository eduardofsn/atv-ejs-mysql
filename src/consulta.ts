import express from 'express';
import connection from './database';

const app = express();

// Configurar o express para usar o EJS
app.set('view engine', 'ejs');
app.set('views', './views'); // Certifique de criar uma pasta 'views' na raiz do projeto

app.get('/', (req, res) => {
    connection.query('SELECT * from usuarios', (err, results) => {
        if(err){
            console.error('Erro ao buscar usuários:', err);
            res.status(500).send('Erro ao buscar usuários');
            return;
        }
        // Renderizar a página 'index.ejs' e passar os dados da consulta com uma variável
        res.render('index', { usuarios: results });
    });
});

app.listen(3000, () =>{
    console.log('Servidor rodando na porta 3000');
});