require('dotenv').config()

const express = require('express')

const { DBTest } = require('./Database.js');
const PublicacionModel = require('./PublicacionModel.js');


const app = express()
const PUERTO = process.env.PUERTO

app.set('view engine', 'ejs');

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.get('/', async function (req, res) {
    const publicaciones = await PublicacionModel.findAll();
    res.render('Inicio', { publicaciones: publicaciones })
})

app.get('/Agregar', function (req, res) {
    res.render('Agregar')
})

app.post('/Agregar', async function (req, res) {

    const { publicacion, descripcion, imagen, fecha } = req.body

    try {
        const nuevaPublicacion = await PublicacionModel.create({

            nombre: publicacion,
            descripcion: descripcion,
            imagen: imagen,
            fecha:fecha_creacion,
        });
        if (nuevaPublicacion) {
            res.redirect('/')
        } else {
            res.send('No se puedo agregar la publicacion ')
        }


    } catch (err) {
        res.send('Se produjo un error al cargar la publicacion: ' + err)
    }
})

app.get('/Eliminar/:id', async function (req, res) {
    const { id } = req.params;

    try {
        const borrarPublicacion = await PublicacionModel.destroy({
            where: {
                id: id
            }
        })

        if (borrarPublicacion) {
            res.redirect('/');
        } else {
            res.send('No se pudo borrar la publicacion:(')
        }
    } catch (err) {
        res.send('Se produjo un errror al borrar la publicacion: ' + err)
    }
})

app.get('/Editar/:id', async function (req, res) {
    const { id } = req.params;

    try {
        const publicacion = await PublicacionModel.findOne({
            where: {
                id: id
            }
        })

        if (publicacion) {
            res.render('Editar', { publicacion: publicacion });
        } else {
            res.send('No se pudo encontrar la publicacion')
        }
    } catch (err) {
        res.send('Se produjo un errror al buscar la publicacion: ' + err)
    }
})


app.post('/Editar/:id', async function (req, res) {
    const { id } = req.params;
    const {publicacion,descripcion} = req.body

    try {
        const publicacionactualizada = await PublicacionModel.update(
            {
                nombre: publicacion,
                descripcion: descripcion,
            }, {
            where: {
                id: id
            }
        })

        if (publicacionactualizada) {
            res.redirect('/');
        } else {
            res.send('No se pudo actualizar la publicacion')
        }
    } catch (err) {
        res.send('Se produjo un errror al buscar la publicacion: ' + err)
    }
})

    DBTest()

    app.listen(PUERTO, () => {
        console.log(`El servidor esta corriendo en el puerto ${PUERTO}`)
    })

