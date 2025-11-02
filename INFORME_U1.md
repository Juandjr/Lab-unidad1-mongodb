# Informe Proyecto U1 - Juan Jiménez

# Justificación del Modelo Dual: 
En terminos de uso yo lo veo mas practico de esta manera debido a que objetos como los productos suelen tener multiples valores y especificaciones extra que aplicandolos dentro de una base de datos relacional podria complicarse demaciado debido a eso dado a que una base de datos NoSQL nos permite ingresar valores extra aunque no esten especificadas estas se pueden llamar mediante un identificador que dentro de nuestra actividad seria el SKU que nos permite identificar el producto unicamente por su valor unico, mientras que para las transicciones, facturas y compras es mejor una base de datos SQL por su robustes, seguridad y sus campos obligatorios. Esto siendo mejor para esta parte debido a que contiene informacion mas sensible como las compras realizadas e informacion de clientes.

# Informe de Calidad de Datos:
1. En la tabla detalles_ventas (SQL) existe el campo sku_producto, pero no hay ninguna clave foránea que valide su existencia en la colección productos de MongoDB.
2. En la tabla clientes, el campo email no tiene ninguna restricción de formato ni está marcado como NOT NULL.
3. En la colección productos, el campo sku identifica a los productos, pero el esquema JSON no define un índice único.

| Nº | Sistema | Problema | Consecuencia |
|----|----------|-----------|---------------|
| 1 | SQL a MongoDB | `sku_producto` en SQL puede no existir en MongoDB | Inconsistencia entre ventas y productos reales |
| 2 | SQL | Campo `email` en `clientes` puede estar nulo o mal formado | Errores de comunicación y baja calidad de datos |
| 3 | MongoDB | Falta de índice único en `sku` | Productos duplicados y errores en inventario |