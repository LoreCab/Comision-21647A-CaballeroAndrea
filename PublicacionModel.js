const { DataTypes } = require('sequelize');
const {sequelize}= require ('./Database.js');

const Publicaciones= sequelize.define('Publicaciones',{

    nombre:{
        type:DataTypes.STRING,
    },
    descripcion: {
        type:DataTypes.STRING,
    },
    imagen:{
        type: DataTypes.STRING,
    },
    fecha_creacion:{
        type:DataTypes.DATE,
    }
},
       
{
    timestamps: false,
    tableName: 'publicaciones',
});



module.exports = Publicaciones;