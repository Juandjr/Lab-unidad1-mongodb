"Creamos la base de datos"
CREATE DATABASE techstore_sales;
USE techstore_sales;

"Creamos las tablas para la base de datos SQL"
CREATE TABLE clientes (
    id_cliente SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    cedula VARCHAR(20) UNIQUE NOT NULL,
    telefono VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE sucursales (
    id_sucursal SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    ciudad VARCHAR(100) NOT NULL
);

CREATE TABLE ventas (
    id_venta SERIAL PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_sucursal INT NOT NULL,
    fecha_venta DATE NOT NULL DEFAULT CURRENT_DATE,
    FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente),
    FOREIGN KEY (id_sucursal) REFERENCES sucursales (id_sucursal) 
);

CREATE TABLE detalles_ventas (
    id_detalle SERIAL PRIMARY KEY,
    id_venta INT NOT NULL,
    sku_producto VARCHAR(50) NOT NULL,
    cantidad INT NOT NULL CHECK (cantidad > 0),
    precio_venta DECIMAL(10,2) NOT NULL CHECK (precio_venta >= 0),
    FOREIGN KEY (id_venta) REFERENCES ventas (id_venta) 
);