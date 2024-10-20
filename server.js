const express = require('express');
const app = express();

const PORT = process.env.PORT || 3000;

const { Op } = require('sequelize')

const sequelize = require("./src/conexion/connection");
const Contents = require("./src/modelos/contents");

// middleware:
app.use(express.json());
app.use(async (req, res, next) => {
    try {
        await sequelize.authenticate();
        await Contents.sync();
        next();
    } catch (error) {
        res
            .status(500)
            .json({ error: "Error en el servidor", descrption: error.message });
    }
});

// traer todos lo registros:
app.get('/contents', async (req, res) => {
    try {
        const allContents = await Contents.findAll();
        const allContentsData = allContents.map((contents) => contents.dataValues);

        allContentsData.length !== 0
            ? res.status(200).json(allContents)
            : res.status(404).json({ error: " No se encontro contenido" });
    } catch (error) {
        res.status(500).json({
            error: "Error al conectar o consultar la base de datos",
            descrption: error.message
        });
    } 
});

// traer registro por clave primaria:
app.get("/contents/:idContent", async (req, res) => {
    try {
        const { idContent } = req.params;
        const contents = await Contents.findByPk(idContent);

        !contents
            ? res.status(404).json({ error: "Registro no encontrado." })
            : res.status(200).json(contents);
    } catch (error) {
        res
            .status(500)
            .json({ error: "Error en el servidor", description: error.message });
    }
});

// busqueda por parametro estricto:
app.get("/contents/nombre/:titulo", async (req, res) => {
    try {
        const { titulo } = req.params;
        const contents = await Contents.findOne({ where: { titulo } });

        !contents
            ? res.status(404).json({ error: "Titulo no encontrado." })
            : res.status(200).json(contents);
    } catch (error) {
        res
            .status(500)
            .json({ error: "Error en el servidor", description: error.message });
    }
});

// filtrar con un parametro laxo:
app.get("/contents/buscar/:query", async (req, res) => {
    try {
        const { query } = req.params;
        const contents = await Contents.findAll({
            where: {
                titulo: {
                    [Op.like]: `%${query}%`,
                },
            },
        });

        contents.length !== 0
            ? res.status(200).json(contents)
            : res
                .status(404)
                .json({ error: "No se encontraron registros para listar." });
    } catch (error) {
        res
            .status(500)
            .json({ error: "Error en el servidor", description: error.message });
    }
})

// agregar un registro:
app.post('/contents', async (req, res) => {
    try {
        const { titulo, categoria, resumen, temporadas, poster, trailer } = req.body;

        if (!titulo || !categoria) {
            return res.status(400).json({ error: 'Faltan campos obligatorios: título o categoría' });
        }

        const nuevoRegistro = await Contents.create({
            titulo,
            categoria,
            resumen,
            temporadas,
            poster,
            trailer
        });

        res.status(201).json(nuevoRegistro);
    } catch (error) {
        console.error("Error al crear registro:", error);
        res.status(500).json({
            error: 'Error al crear registro',
            description: error.message
        });
    }
});

// modificar registro por ID:
app.put('/contents/:idContent', async (req, res) => {
    try {
        const { idContent } = req.params;
        const { titulo, categoria, resumen, temporadas, poster, trailer } = req.body;

        if (!titulo || !categoria) {
            return res.status(400).json({ error: 'Faltan campos obligatorios: título o categoría' });
        }

        // Buscar el registro antes de la actualización
        const contentToUpdate = await Contents.findByPk(idContent);

        if (!contentToUpdate) {
            return res.status(404).json({ error: "Registro no encontrado." });
        }

        // Actualizar solo si hay cambios
        await Contents.update(
            { titulo, categoria, resumen, temporadas, poster, trailer },
            { where: { idContent } }
        );

        // Volver a buscar el registro actualizado (o no modificado)
        const updatedContent = await Contents.findByPk(idContent);
        res.status(200).json(updatedContent);
    } catch (error) {
        res.status(500).json({
            error: "Error en el servidor",
            description: error.message,
        });
    }
});

// eliminar un registro por ID:
app.delete("/contents/:idContent", async (req, res) => {
    const { idContent } = req.params;

    try {
        const contentToDelete = await Contents.findByPk(idContent);

        if (!contentToDelete) {
            return res.status(404).json({ error: "Registro no encontrado." });
        }

        await contentToDelete.destroy();

        res.status(204).send();
    } catch (error) {
        res.status(500).json({
            error: "Error en el servidor",
            description: error.message,
        });
    }
});


app.listen(PORT, () => {
    console.log(`http://localhost:${PORT}`);
});

