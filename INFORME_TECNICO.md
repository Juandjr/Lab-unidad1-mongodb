# 1. Análisis comparativo:

## Análisis comparativo

| **Criterio** | **Modelo Relacional** | **No SQL** | **Para “TechStore”** |
|---------------|------------------------|-------------|------------------------|
| **Flexibilidad** | Flexibilidad limitada por los criterios establecidos al crear la base de datos | Flexible debido a que no necesita tener los mismos valores establecidos para todos los registros (dependiendo de la estructura de la colección) | Una base de datos NoSQL facilitaría la generación de registros para la base de datos debido a que no es tan estricto con los criterios que deben tener. |
| **Modelo de Datos** | Se enfoca únicamente a los datos que se encuentran en las tablas | Se genera una colección que puede contener de todo tipo de valores | Al ser una sola colección la que contiene toda la información, la obtención de los datos va a ser más rápida y por medio de filtros se puede especificar la información que se desea únicamente. |
| **Consulta de datos** | Se requiere usar Joins para traer toda la información desde múltiples tablas | Como está todo en una sola colección, únicamente se llama a un solo documento | Además se evita usar muchas conexiones para realizar una consulta compleja; al llamar a un solo documento se obtiene toda la información con pocas líneas de código. |


# 2. Diseño del Modelo Relacional (Conceptual):

![Error de carga / No encontrado](/img/drawio.png)

# 3. Diseño del Modelo NoSQL (MongoDB):

### {

"_id": "ObjectId(...)",

"nombre": "String",

"precio": "Number",

"stock": "Number",

"tipo_producto": "String (Enum: 'Laptop', 'Smartphone', 'Monitor', 'Accesorio')",

"fecha_creacion": "Date",

"especificaciones": {

// Ejemplo Smartphone:

"pantalla": "6.5\"",


"ram_gb": 8,

"bateria_mAh": 5000,

// Ejemplo Laptop:

"cpu": "Intel Core i7",

"ram_gb": 16,

"almacenamiento_gb": 512,

"dimensiones": { "ancho_cm": 35, "alto_cm": 2.0, "peso_kg": 1.8 }

}

}

# 4. Preparación del Entorno:

![Error de carga / No encontrado](/img/1.PNG)

# 5. Inserción de Datos (Create):

![Error de carga / No encontrado](/img/2.png)

# 6. Lectura de Datos (Read):

![Error de carga / No encontrado](/img/3.png)

# 7. Actualización de Datos (Update):

![Error de carga / No encontrado](/img/4.png)

# 8. Resultados de la Ejecución:

![Error de carga / No encontrado](/img/5.png)

![Error de carga / No encontrado](/img/6.png)

# 9. Análisis Reflexivo:

## 9.1. Pregunta 1: ¿Cuál fue la ventaja más significativa de usar un modelo de documento (MongoDB) para el caso "TechStore" en comparación con el modelo o relacional que diseñó?

Que este no necesita hacer uso de múltiples tablas lo que ayuda a ahorrar memoria al momento de hacer consultas y también que los registros se encuentran en un solo registro este va a mostrar toda la información sin tener que hacer conexiones y para la información solo se debe filtrar los datos que se quieran ver.

## 9.2. Pregunta 2: ¿Cómo facilita el anidamiento de documentos (el campo especificaciones) la gestión de datos heterogéneos (diferentes atributos por producto)?

Esto facilita debido a que sería como llamar a otra tabla en una base de datos relacional pero aquí ya lo tenemos en el mismo archivo y nos facilita las consultas, Y como lo divide similar debido a que es como varios campos dentro de un campo se ahorra las conexiones.

## 9.3. Pregunta 3: ¿Qué problemas potenciales podría enfrentar esta base de datos a futuro si no se controla la flexibilidad del esquema (es decir, si se permite insertar cualquier dato)?

Puede que la base de datos se rellene de información no importante o que otros registros no tengan los mismos registros que otro por lo que en caso que se necesite esta información algunos no tendrán este dato.

## 9.4. Pregunta 4: ¿Qué paso técnico recomendaría a continuación para "profesionalizar" esta base de datos? (Piense en rendimiento e integridad de datos que no cubrimos en este laboratorio).

Hacer que al momento de crear la colección asignar algunos valores por defecto y requeridos, también ponerle un tipo de dato en específico así para que solo se pueda ingresar valores necesarios.
