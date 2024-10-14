const { DataTypes } = require("sequelize");
const sequelize = require("../conexion/connection");

const ContentActors = sequelize.define(
    'ContentActors', {
        id_content: {
            type: DataTypes.INTEGER,
            allowNull: false,
            references: {
                model: 'contents', // Nombre de la tabla en minúsculas
                key: 'idContent'   // Clave primaria en la tabla de contents
            }
        },
        id_actor: {
            type: DataTypes.INTEGER,
            allowNull: false,
            references: {
                model: 'actors', // Nombre de la tabla de actores
                key: 'idActor'   // Clave primaria en la tabla de actors
            }
        }
    }, {
        tableName: 'content_actors',
        timestamps: false
    }
);

module.exports = ContentActors;
