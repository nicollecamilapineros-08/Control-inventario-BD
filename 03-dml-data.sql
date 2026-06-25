mysql> INSERT INTO ubicacion (Pasillo, Estante) VALUES
    -> (1, 1), (1, 2), (1, 3), (2, 1), (2, 2),
    -> (2, 3), (3, 1), (3, 2), (3, 3), (4, 1);
Query OK, 10 rows affected (0.30 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> INSERT INTO categoria (Ref_interna, Descripcion) VALUES
    -> (100, 'Herramientas manuales'),
    -> (101, 'Herramientas eléctricas'),
    -> (102, 'Tornillos'),
    -> (103, 'Pinturas'),
    -> (104, 'Plomería'),
    -> (105, 'Electricidad'),
    -> (106, 'Cerraduras y seguridad'),
    -> (107, 'Adhesivos y selladores'),
    -> (108, 'Jardinería'),
    -> (109, 'Equipo de protección personal');
Query OK, 10 rows affected (0.15 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> INSERT INTO ciudad (Nombre) VALUES
    -> ('Bucaramanga'),
    -> ('Medellín'),
    -> ('Bogotá'),
    -> ('Cali'),
    -> ('Cartagena'),
    -> ('Barranquilla'),
    -> ('Pereira'),
    -> ('Palmira'),
    -> ('Barrancabermeja'),
    -> ('Tunja');
Query OK, 10 rows affected (0.15 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> INSERT INTO proveedor (Id_tributaria, Nombre, Persona_contacto, Telefono, Correo, Direccion, ID_ciudad, Estado) VALUES
    -> (900111222, 'Ferretería El Tornillo SAS', 'Carlos Pérez', 3001234567, 'ventas@eltornillo.com', 'Cra 10 #20-30', 1, TRUE),
    -> (900222333, 'Distribuciones Acero Ltda', 'Mónica Gómez', 3009876543, 'contacto@acerodist.com', 'Calle 45 #12-08', 2, TRUE),
    -> (900333444, 'Pinturas y Más SA', 'Luis Ramírez', 3112345678, 'info@pinturasymas.com', 'Av. Quebradaseca #5-21', 1, TRUE),
    -> (900444555, 'Eléctricos del Oriente', 'Ana Torres', 3157894561, 'eduardo@electricosoriente.com', 'Cra 27 #14-50', 3, TRUE),
    -> (900555666, 'Importadora Total Herramientas', 'Jorge Díaz', 3201112233, 'jorge@importatotal.com', 'Calle 56 #8-19', 5, TRUE),
    -> (900666777, 'Plomería Express', 'Patricia Ruiz', 3134567890, 'pruiz@plomeriaexpress.com', 'Cra 15 #30-12', 4, TRUE),
    -> (900777888, 'Seguridad Industrial Andina', 'Felipe Castro', 3187654321, 'fcastro@segandina.com', 'Calle 33 #9-45', 6, TRUE),
    -> (900888999, 'Jardín y Hogar SAS', 'Diana López', 3009998877, 'dlopez@jardinyhogar.com', 'Cra 22 #18-60', 7, TRUE),
    -> (900999000, 'Adhesivos Industriales SA', 'Raúl Mendoza', 3112223344, 'rmendoza@adhesivosind.com', 'Calle 70 #11-25', 1, TRUE),
    -> (901000111, 'Ferreproductos Nacional', 'Sandra Ortiz', 3145556677, 'sortiz@ferreprodnal.com', 'Av. González Valencia #3-14', 2, FALSE);
Query OK, 10 rows affected (0.15 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> INSERT INTO producto (Ref_interna, Nombre, Descripcion, Marca, Und_venta, Precio_venta, Estado, Cant_disponible, Cant_min, Cant_max, ID_categoria, ID_ubicacion) VALUES
    -> (5001, 'Martillo de uña 16oz', 'Martillo con mango de fibra de vidrio', 'Truper', 'Unidad', 25000, TRUE, 40, 5, 100, 1, 1),
    -> (5002, 'Taladro percutor 1/2"', 'Taladro eléctrico 600W con maletín', 'Bosch', 'Unidad', 185000, TRUE, 15, 3, 50, 2, 4),
    -> (5003, 'Tornillo autorroscante 1"', 'Caja x 100 unidades, punta fina', 'Hillman', 'Caja', 12000, TRUE, 80, 10, 200, 3, 2),
    -> (5004, 'Pintura blanca tipo 1', 'Galón pintura para interiores', 'Pintuco', 'Galón', 65000, TRUE, 30, 5, 80, 4, 6),
    -> (5005, 'Llave de paso 1/2" PVC', 'Llave de paso para tubería PVC', 'Pavco', 'Unidad', 9500, TRUE, 50, 10, 150, 5, 5),
    -> (5006, 'Cable eléctrico THHN #12', 'Rollo de 100 metros, color negro', 'Centelsa', 'Rollo', 145000, TRUE, 12, 2, 30, 6, 7),
    -> (5007, 'Candado de seguridad 50mm', 'Candado de acero con llave reforzada', 'Yale', 'Unidad', 32000, TRUE, 25, 5, 60, 7, 8),
    -> (5008, 'Silicona transparente', 'Tubo de silicona para sellado', 'Sika', 'Unidad', 14000, TRUE, 60, 10, 150, 8, 3),
    -> (5009, 'Guantes de seguridad', 'Par de guantes anticorte talla M', '3M', 'Par', 18000, TRUE, 45, 10, 100, 10, 9),
    -> (5010, 'Manguera de jardín 15m', 'Manguera reforzada con conectores', 'Truper', 'Unidad', 55000, FALSE, 0, 5, 40, 9, 10);
Query OK, 10 rows affected (0.16 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> INSERT INTO producto_proveedor (ID_producto, ID_proveedor, Ref_proveedor, Precio_compra, Dias_entrega) VALUES
    -> (1, 5, 8801, 18000, 3),
    -> (2, 4, 8802, 140000, 7),
    -> (3, 9, 8803, 8500, 2),
    -> (4, 3, 8804, 48000, 4),
    -> (5, 6, 8805, 7000, 5),
    -> (6, 4, 8806, 110000, 6),
    -> (7, 7, 8807, 24000, 3),
    -> (8, 9, 8808, 9500, 2),
    -> (9, 7, 8809, 13000, 4),
    -> (10, 1, 8810, 38000, 5);
Query OK, 10 rows affected (0.16 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM categoria;
+--------------+-------------+-------------------------------+
| ID_categoria | Ref_interna | Descripcion                   |
+--------------+-------------+-------------------------------+
|            1 |         100 | Herramientas manuales         |
|            2 |         101 | Herramientas eléctricas       |
|            3 |         102 | Tornillos                     |
|            4 |         103 | Pinturas                      |
|            5 |         104 | Plomería                      |
|            6 |         105 | Electricidad                  |
|            7 |         106 | Cerraduras y seguridad        |
|            8 |         107 | Adhesivos y selladores        |
|            9 |         108 | Jardinería                    |
|           10 |         109 | Equipo de protección personal |
+--------------+-------------+-------------------------------+
10 rows in set (0.15 sec)

mysql> SELECT * FROM ubicacion;
+--------------+---------+---------+
| ID_ubicacion | Pasillo | Estante |
+--------------+---------+---------+
|            1 |       1 |       1 |
|            2 |       1 |       2 |
|            3 |       1 |       3 |
|            4 |       2 |       1 |
|            5 |       2 |       2 |
|            6 |       2 |       3 |
|            7 |       3 |       1 |
|            8 |       3 |       2 |
|            9 |       3 |       3 |
|           10 |       4 |       1 |
+--------------+---------+---------+
10 rows in set (0.16 sec)

mysql> SELECT * FROM producto;
+-------------+-------------+---------------------------+---------------------------------------+----------+-----------+--------------+--------+-----------------+----------+----------+--------------+--------------+
| ID_producto | Ref_interna | Nombre                    | Descripcion                           | Marca    | Und_venta | Precio_venta | Estado | Cant_disponible | Cant_min | Cant_max | ID_categoria | ID_ubicacion |
+-------------+-------------+---------------------------+---------------------------------------+----------+-----------+--------------+--------+-----------------+----------+----------+--------------+--------------+
|           1 |        5001 | Martillo de uña 16oz      | Martillo con mango de fibra de vidrio | Truper   | Unidad    |        25000 |      1 |              40 |        5 |      100 |            1 |            1 |
|           2 |        5002 | Taladro percutor 1/2"     | Taladro eléctrico 600W con maletín    | Bosch    | Unidad    |       185000 |      1 |              15 |        3 |       50 |            2 |            4 |
|           3 |        5003 | Tornillo autorroscante 1" | Caja x 100 unidades, punta fina       | Hillman  | Caja      |        12000 |      1 |              80 |       10 |      200 |            3 |            2 |
|           4 |        5004 | Pintura blanca tipo 1     | Galón pintura para interiores         | Pintuco  | Galón     |        65000 |      1 |              30 |        5 |       80 |            4 |            6 |
|           5 |        5005 | Llave de paso 1/2" PVC    | Llave de paso para tubería PVC        | Pavco    | Unidad    |         9500 |      1 |              50 |       10 |      150 |            5 |            5 |
|           6 |        5006 | Cable eléctrico THHN #12  | Rollo de 100 metros, color negro      | Centelsa | Rollo     |       145000 |      1 |              12 |        2 |       30 |            6 |            7 |
|           7 |        5007 | Candado de seguridad 50mm | Candado de acero con llave reforzada  | Yale     | Unidad    |        32000 |      1 |              25 |        5 |       60 |            7 |            8 |
|           8 |        5008 | Silicona transparente     | Tubo de silicona para sellado         | Sika     | Unidad    |        14000 |      1 |              60 |       10 |      150 |            8 |            3 |
|           9 |        5009 | Guantes de seguridad      | Par de guantes anticorte talla M      | 3M       | Par       |        18000 |      1 |              45 |       10 |      100 |           10 |            9 |
|          10 |        5010 | Manguera de jardín 15m    | Manguera reforzada con conectores     | Truper   | Unidad    |        55000 |      0 |               0 |        5 |       40 |            9 |           10 |
+-------------+-------------+---------------------------+---------------------------------------+----------+-----------+--------------+--------+-----------------+----------+----------+--------------+--------------+
10 rows in set (0.16 sec)

mysql> SELECT * FROM ciudad;
+-----------+-----------------+
| ID_ciudad | Nombre          |
+-----------+-----------------+
|         1 | Bucaramanga     |
|         2 | Medellín        |
|         3 | Bogotá          |
|         4 | Cali            |
|         5 | Cartagena       |
|         6 | Barranquilla    |
|         7 | Pereira         |
|         8 | Palmira         |
|         9 | Barrancabermeja |
|        10 | Tunja           |
+-----------+-----------------+
10 rows in set (0.15 sec)

mysql> SELECT * FROM proveedor;
+--------------+---------------+--------------------------------+------------------+------------+-------------------------------+-----------------------------+-----------+--------+
| ID_proveedor | Id_tributaria | Nombre                         | Persona_contacto | Telefono   | Correo                        | Direccion                   | ID_ciudad | Estado |
+--------------+---------------+--------------------------------+------------------+------------+-------------------------------+-----------------------------+-----------+--------+
|            1 |     900111222 | Ferretería El Tornillo SAS     | Carlos Pérez     | 3001234567 | ventas@eltornillo.com         | Cra 10 #20-30               |         1 |      1 |
|            2 |     900222333 | Distribuciones Acero Ltda      | Mónica Gómez     | 3009876543 | contacto@acerodist.com        | Calle 45 #12-08             |         2 |      1 |
|            3 |     900333444 | Pinturas y Más SA              | Luis Ramírez     | 3112345678 | info@pinturasymas.com         | Av. Quebradaseca #5-21      |         1 |      1 |
|            4 |     900444555 | Eléctricos del Oriente         | Ana Torres       | 3157894561 | eduardo@electricosoriente.com | Cra 27 #14-50               |         3 |      1 |
|            5 |     900555666 | Importadora Total Herramientas | Jorge Díaz       | 3201112233 | jorge@importatotal.com        | Calle 56 #8-19              |         5 |      1 |
|            6 |     900666777 | Plomería Express               | Patricia Ruiz    | 3134567890 | pruiz@plomeriaexpress.com     | Cra 15 #30-12               |         4 |      1 |
|            7 |     900777888 | Seguridad Industrial Andina    | Felipe Castro    | 3187654321 | fcastro@segandina.com         | Calle 33 #9-45              |         6 |      1 |
|            8 |     900888999 | Jardín y Hogar SAS             | Diana López      | 3009998877 | dlopez@jardinyhogar.com       | Cra 22 #18-60               |         7 |      1 |
|            9 |     900999000 | Adhesivos Industriales SA      | Raúl Mendoza     | 3112223344 | rmendoza@adhesivosind.com     | Calle 70 #11-25             |         1 |      1 |
|           10 |     901000111 | Ferreproductos Nacional        | Sandra Ortiz     | 3145556677 | sortiz@ferreprodnal.com       | Av. González Valencia #3-14 |         2 |      0 |
+--------------+---------------+--------------------------------+------------------+------------+-------------------------------+-----------------------------+-----------+--------+
10 rows in set (0.15 sec)