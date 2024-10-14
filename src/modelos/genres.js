const { DataTypes } = require("sequelize");
const sequelize = require("../conexion/connection");

const Genres = sequelize.define(
    'Genres', {
        idGenre: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true
        },
        name: {
            type: DataTypes.STRING,
            allowNull: false 
        }
    }, {
        tableName: 'genres', 
        timestamps: false 
    }
);

module.exports = Genres;
