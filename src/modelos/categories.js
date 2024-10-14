const { DataTypes } = require("sequelize");
const sequelize = require("../conexion/connection");

const Categories = sequelize.define(
    'Categories', {
        nombre: {
            type: DataTypes.STRING,
            allowNull: false
        },
        descripcion: {
            type: DataTypes.TEXT,
            allowNull: true
        }
    }, {
        tableName: 'categories',
        timestamps: false
    }
);

module.exports = Categories;