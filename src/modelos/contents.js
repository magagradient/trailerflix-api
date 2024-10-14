const { DataTypes } = require("sequelize");
const sequelize = require("../conexion/connection");

const Contents = sequelize.define(
    'Contents', {
    idContent: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true
    },
    titulo: {
        type: DataTypes.STRING,
        allowNull: false
    },
    categoria: {
        type: DataTypes.ENUM('Serie', 'Película'),
        allowNull: false
    },
    resumen: {
        type: DataTypes.TEXT,
        allowNull: true
    },
    temporadas: {
        type: DataTypes.INTEGER,
        allowNull: true
    },
    poster: {
        type: DataTypes.STRING,
        allowNull: true
    },
    trailer: {
        type: DataTypes.STRING,
        allowNull: true
    }
},
    {
        tableName: 'contents',
        timestamps: false
    });

module.exports = Contents;