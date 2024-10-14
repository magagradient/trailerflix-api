# TRAILERFLIX API REST - Segundo Proyecto Integrador UNTREF

## Descripción
Este proyecto es una API REST desarrollada con **Express.js** y **Sequelize**, que se conecta a una base de datos **MySQL** para realizar operaciones CRUD (Crear, Leer, Actualizar y Eliminar) sobre una tabla llamada `Contents`.

## Requisitos

### Dependencias

- **express**: 
  Framework para construir aplicaciones web y APIs en Node.js. Facilita el manejo de rutas, peticiones HTTP y middleware para gestionar las solicitudes y respuestas del servidor.
- **mysql2**: 
  Es un cliente de MySQL para Node.js que permite interactuar con bases de datos MySQL. Es eficiente y soporta promesas, lo que facilita su uso con otras librerías como Sequelize.
- **sequelize**: 
  Es un ORM (Object-Relational Mapping) que facilita la interacción con bases de datos SQL como MySQL. Permite definir modelos y realizar operaciones como consultas, inserciones, actualizaciones y eliminaciones de manera más sencilla.
- **dotenv**: 
  Permite cargar variables de entorno desde un archivo .env en Node.js. Esto es útil para manejar configuraciones sensibles como credenciales de bases de datos, sin exponerlas directamente en el código fuente.

  **Estas dependencias combinadas te ayudan a crear y gestionar una API REST robusta que interactúa con una base de datos MySQL de manera eficiente y segura.**

### Dependencias de Desarrollo
- **nodemon**: 
  Es una herramienta que reinicia automáticamente el servidor de Node.js cada vez que detecta cambios en el código fuente. Esto facilita el desarrollo, ya que no es necesario detener y reiniciar manualmente el servidor después de cada modificación.

### Variables de Entorno
Debes configurar un archivo `.env` basado en el archivo de ejemplo `.env-example`. Este archivo debe incluir las siguientes variables:

- `DB_HOST`
- `DB_USER`
- `DB_PASSWORD`
- `DB_NAME`
- `PORT` (opcional, valor por defecto: 3000)

## Instalación

1. Clonar el repositorio.
2. Instalar las dependencias con el siguiente comando:
   ```bash
   npm install

3. Iniciar el servidor en modo produccion:
   ```bash
   npm start

4. Para iniciar el servidor en modo de desarrollo (con recarga automática):
   ```bash
   npm run dev

El servidor correrá por defecto en http://localhost:3000/, a menos que se especifique otro puerto en el archivo .env.

## Endpoints:

## Postman

## EJEMPLOS DE USO

### · Obtener todos los registros de la tabla Contents:

GET http://localhost:3000/contents

### · Obtener un registro específico por su clave primaria:

GET http://localhost:3000/contents/20

### · Obtener un registro por su nombre de forma estricta: 

GET http://localhost:3000/contents/nombre/The Witcher

### · Realiza una búsqueda laxa por título usando el operador LIKE:

GET http://localhost:3000/contents/buscar/Gambi

### · Agrega un nuevo registro a la tabla Contents:

### Parámetros (Body)

* `titulo` (string, obligatorio)
* `categoria` (string, obligatorio)
* `resumen` (string, opcional)
* `temporadas` (integer, opcional)
* `poster` (string, opcional)
* `trailer` (string, opcional)

POST http://localhost:3000/contents

```json
{
    "titulo": "The White lotus",
    "categoria": "Serie",
    "resumen": "Sigue a los huéspedes y empleados de la cadena turística White Lotus, cuyas interacciones se ven afectadas por sus diversas disfunciones psicosociales.",
    "temporadas": 2,
    "poster": "/posters/39.jpg",
    "trailer": "https://youtu.be/A9sZpCacWhI?si=WPdqDKBFE2yUWbRj"
}
```

### Modificar registro por ID:

PUT http://localhost:3000/contents/38

```json
    {
        "idContent": 38,
        "titulo": "Stranger Things 2",
        "categoria": "Serie",
        "resumen": "Un grupo de amigos se enfrenta a eventos sobrenaturales en su ciudad...",
        "temporadas": 6,
        "poster": "/posters/38.jpg",
        "trailer": null
    }
```

### Eliminar un registro por ID (ejemplo: Stranger Things):

DELETE http://localhost:3000/contents/38

# Manejo de Errores

La API maneja los errores de forma controlada, devolviendo códigos de estado HTTP y mensajes descriptivos en formato JSON para que el cliente y desarrolladores entiendan claramente los problemas y resuelvan problemas más rápido.

### 400 Bad Request
Este código de error se devuelve cuando faltan campos obligatorios o los datos proporcionados no cumplen con los requisitos.

* `Ejemplo:` En el endpoint POST y PUT /contents, si no se proporcionan los campos titulo o categoria, la API devolverá:

```json
{
  "error": "Faltan campos obligatorios: título o categoría"
}
```
### 404 Not Found
Este código se devuelve cuando el recurso solicitado no se encuentra en la base de datos.

 En el endpoint GET /contents/:IdContent, si el contenido con el ID proporcionado no existe, la API devolverá:
  
```json
{
  "error": "Registro no encontrado."
}
```
### 500 Internal Server Error
Este error ocurre cuando hay un problema inesperado en el servidor, como errores de conexión con la base de datos o fallos durante las operaciones de lectura/escritura.

* `Ejemplo:` Si ocurre un error al consultar la base de datos, la API puede devolver algo como:

```json
{
  "error": "Error en el servidor",
  "description": "Descripción detallada del error."
}
```

### Ejemplo de manejo de errores en la modificación de un registro (PUT /contents/:idContent):
Si se intenta modificar un registro que no existe en la base de datos o si no se proporciona un campo obligatorio, se devolverán los siguientes errores:

* Si el registro no existe:
```json
{
  "error": "Registro no encontrado."
}
```
* Si faltan campos obligatorios:
```json
{
  "error": "Faltan campos obligatorios: título o categoría"
}
```

### Estructura del Proyecto

El proyecto sigue una estructura organizada para facilitar el mantenimiento y escalabilidad de la API. A continuación, se detalla la organización de las carpetas y archivos principales: 

```bash
trailerflix-api/
├── src/
│   ├── conexion/
│   │   └── connection.js  
│   ├── modelos/
│   │   └── actors.js 
│   │   └── categories.js 
│   │   └── content_actors.js 
│   │   └── content_genres.js 
│   │   └── contents.js 
│   │   └── genres.js           
├── .env                          
├── .env-example                
├── package-lock.json                 
├── package.json                 
├── server.js                    
└── README.md                     
```

## Descripción de las Carpetas y Archivos
* `src/conexion/connection.js:` Archivo donde se configura la conexión a la base de datos MySQL utilizando Sequelize. Este archivo se conecta a la base de datos según las variables definidas en el archivo .env.

* `src/modelos/contents.js:` Define el modelo Contents, que representa la tabla en la base de datos. Aquí se especifican los campos de la tabla y sus tipos de datos, además de las validaciones y asociaciones.

* `.env:` Archivo donde se definen las variables de entorno, como las credenciales de la base de datos y el puerto del servidor.

* `.env-example:` Un archivo de ejemplo que sirve de guía para que los desarrolladores sepan qué variables de entorno necesitan configurar.

* `package.json:` Archivo de configuración del proyecto que incluye todas las dependencias y scripts necesarios para ejecutar la API.

* `server.js:` El archivo principal donde se configuran las rutas de la API, se inician los middlewares y se lanza el servidor Express.

   #### ___Trabajo realizado por Magalí Guerzoni.___




