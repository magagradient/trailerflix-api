const { DataTypes } = require("sequelize");
const sequelize = require("../conexion/connection");

const ContentGenres = sequelize.define(
    'ContentGenres', {
        id_content: {
            type: DataTypes.INTEGER,
            allowNull: false,
            references: {
                model: 'contents', // Nombre de la tabla en minúsculas
                key: 'idContent'   // Clave primaria en la tabla de contents
            }
        },
        id_genre: {
            type: DataTypes.INTEGER,
            allowNull: false,
            references: {
                model: 'genres', // Nombre de la tabla de géneros
                key: 'id'        // Clave primaria en la tabla de genres
            }
        }
    }, {
        tableName: 'content_genres',
        timestamps: false
    }
);

module.exports = ContentGenres;
