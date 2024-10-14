const { DataTypes } = require("sequelize");
const sequelize = require("../conexion/connection");

const Actors = sequelize.define(
    'Actors', {
        idActor: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true 
        },
        name: {
            type: DataTypes.STRING, 
            allowNull: false
        }
    }, {
        tableName: 'actors', 
        timestamps: false 
    }
);

module.exports = Actors;
