# Diseño de Base de Datos - Control de Inventario Ferretería Martillito

Este repositorio contiene el diseño y la estructura de la base de datos relacional para el control de inventario de la ferretería **Martillito**. El proyecto incluye el modelo relacional, los scripts de creación de tablas, la carga de datos de ejemplo y las consultas de validación.

## Integrantes del grupo de trabajo

- Nicolle Camila Piñeros Castañeda
- Jhoan Alexander Quintanilla Rodríguez

## Contenido del repositorio

| Archivo | Descripción |
|---|---|
| `diagrama-relacional.svg` | Diagrama del modelo relacional con las tablas, sus atributos, llaves primarias y foráneas, y las relaciones entre ellas. |
| `ddl.sql` | Script de creación de la base de datos y las tablas (Data Definition Language). |
| `dml-data.sql` | Script con la inserción de datos de ejemplo en cada tabla (Data Manipulation Language). |
| `dml-querys.sql` | Script con consultas SQL de prueba sobre la base de datos. |
| `README.md` | Este archivo. |

## Descripción del modelo

La base de datos está compuesta por las siguientes tablas:

- **categoria**: clasifica los productos (herramientas manuales, electricidad, plomería, etc.).
- **ubicacion**: identifica el pasillo y estante donde se almacena cada producto.
- **producto**: información de cada artículo del inventario (referencia, nombre, precio, existencias, etc.).
- **proveedor**: información de los proveedores que suministran los productos.
- **ciudad**: ciudades asociadas a cada proveedor.
- **producto_proveedor**: tabla intermedia que resuelve la relación de muchos a muchos entre productos y proveedores, registrando el precio de compra y el tiempo de entrega de cada uno.

## Cómo usar los scripts

1. Ejecutar `ddl.sql` para crear la base de datos y las tablas.
2. Ejecutar `dml-data.sql` para insertar los datos de ejemplo.
3. Ejecutar `dml-querys.sql` para correr las consultas de validación.

```bash
mysql -u root -p < ddl.sql
mysql -u root -p ferreteria < dml-data.sql
mysql -u root -p ferreteria < dml-querys.sql
```
