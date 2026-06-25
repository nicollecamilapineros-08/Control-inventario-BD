-- 1. Mostrar toda la información registrada sobre los productos

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
10 rows in set (0.15 sec)




-- 2. Mostrar las categorías cuyo nombre comience por la letra H.


mysql> SELECT * FROM categoria WHERE descripcion LIKE 'H%';
+--------------+-------------+-------------------------+
| ID_categoria | Ref_interna | Descripcion             |
+--------------+-------------+-------------------------+
|            1 |         100 | Herramientas manuales   |
|            2 |         101 | Herramientas eléctricas |
+--------------+-------------+-------------------------+
2 rows in set (0.15 sec)





-- 3. Mostrar la referencia, el nombre y la marca de los productos cuyo nombre comience por M




mysql> SELECT Ref_interna, Nombre, Marca
    -> FROM producto
    -> WHERE Nombre LIKE 'Martillo%';
+-------------+----------------------+--------+
| Ref_interna | Nombre               | Marca  |
+-------------+----------------------+--------+
|        5001 | Martillo de uña 16oz | Truper |
+-------------+----------------------+--------+
1 row in set (0.15 sec)




-- 4. Mostrar los productos cuya descripción contenga la palabra acero.




mysql> SELECT * FROM producto WHERE Descripcion LIKE '%acero%';
+-------------+-------------+---------------------------+--------------------------------------+-------+-----------+--------------+--------+-----------------+----------+----------+--------------+--------------+
| ID_producto | Ref_interna | Nombre                    | Descripcion                          | Marca | Und_venta | Precio_venta | Estado | Cant_disponible | Cant_min | Cant_max | ID_categoria | ID_ubicacion |
+-------------+-------------+---------------------------+--------------------------------------+-------+-----------+--------------+--------+-----------------+----------+----------+--------------+--------------+
|           7 |        5007 | Candado de seguridad 50mm | Candado de acero con llave reforzada | Yale  | Unidad    |        32000 |      1 |              25 |        5 |       60 |            7 |            8 |
+-------------+-------------+---------------------------+--------------------------------------+-------+-----------+--------------+--------+-----------------+----------+----------+--------------+--------------+
1 row in set (0.15 sec)




-- 5. Mostrar los productos de la marca Truper que se encuentren disponibles




mysql> SELECT * FROM producto
    -> WHERE Marca = 'Truper' AND Estado = TRUE;
+-------------+-------------+----------------------+---------------------------------------+--------+-----------+--------------+--------+-----------------+----------+----------+--------------+--------------+
| ID_producto | Ref_interna | Nombre               | Descripcion                           | Marca  | Und_venta | Precio_venta | Estado | Cant_disponible | Cant_min | Cant_max | ID_categoria | ID_ubicacion |
+-------------+-------------+----------------------+---------------------------------------+--------+-----------+--------------+--------+-----------------+----------+----------+--------------+--------------+
|           1 |        5001 | Martillo de uña 16oz | Martillo con mango de fibra de vidrio | Truper | Unidad    |        25000 |      1 |              40 |        5 |      100 |            1 |            1 |
+-------------+-------------+----------------------+---------------------------------------+--------+-----------+--------------+--------+-----------------+----------+----------+--------------+--------------+
1 row in set (0.17 sec)





-- 6. Mostrar los productos cuya cantidad disponible sea menor que su cantidad mínima.




mysql> SELECT Cant_disponible, Cant_min
    -> FROM producto
    -> WHERE Cant_disponible>Cant_min;
+-----------------+----------+
| Cant_disponible | Cant_min |
+-----------------+----------+
|              40 |        5 |
|              15 |        3 |
|              80 |       10 |
|              30 |        5 |
|              50 |       10 |
|              12 |        2 |
|              25 |        5 |
|              60 |       10 |
|              45 |       10 |
+-----------------+----------+
9 rows in set (0.15 sec)




-- 7. Mostrar los productos cuya cantidad disponible sea menor que la mínima o mayor que la máxima.




mysql> SELECT * FROM producto WHERE Cant_disponible < Cant_min OR Cant_disponible>Cant_max;
+-------------+-------------+------------------------+-----------------------------------+--------+-----------+--------------+--------+-----------------+----------+----------+--------------+--------------+
| ID_producto | Ref_interna | Nombre                 | Descripcion                       | Marca  | Und_venta | Precio_venta | Estado | Cant_disponible | Cant_min | Cant_max | ID_categoria | ID_ubicacion |
+-------------+-------------+------------------------+-----------------------------------+--------+-----------+--------------+--------+-----------------+----------+----------+--------------+--------------+
|          10 |        5010 | Manguera de jardín 15m | Manguera reforzada con conectores | Truper | Unidad    |        55000 |      0 |               0 |        5 |       40 |            9 |           10 |
+-------------+-------------+------------------------+-----------------------------------+--------+-----------+--------------+--------+-----------------+----------+----------+--------------+--------------+
1 row in set (0.15 sec)




-- 8. Mostrar los proveedores ubicados en Bogotá que se encuentren activos.




mysql> SELECT p.*
    -> FROM proveedor p
    -> JOIN ciudad c
    -> ON p.ID_ciudad = c.ID_ciudad
    -> WHERE p.Nombre = 'INDUSTRIAL' OR c.Nombre = 'Cali';
+--------------+---------------+------------------+------------------+------------+---------------------------+---------------+-----------+--------+
| ID_proveedor | Id_tributaria | Nombre           | Persona_contacto | Telefono   | Correo                    | Direccion     | ID_ciudad | Estado |
+--------------+---------------+------------------+------------------+------------+---------------------------+---------------+-----------+--------+
|            6 |     900666777 | Plomería Express | Patricia Ruiz    | 3134567890 | pruiz@plomeriaexpress.com | Cra 15 #30-12 |         4 |      1 |
+--------------+---------------+------------------+------------------+------------+---------------------------+---------------+-----------+--------+
1 row in set (0.16 sec)




-- 9. Mostrar los proveedores cuyo nombre contenga la palabra Industrial o cuya ciudad sea Cali.




mysql> SELECT p.*
    -> FROM proveedor p
    -> JOIN ciudad c ON p.ID_ciudad = c.ID_ciudad
    -> WHERE c.Nombre = 'Bogotá' AND p.Estado = TRUE;
+--------------+---------------+------------------------+------------------+------------+-------------------------------+---------------+-----------+--------+
| ID_proveedor | Id_tributaria | Nombre                 | Persona_contacto | Telefono   | Correo                        | Direccion     | ID_ciudad | Estado |
+--------------+---------------+------------------------+------------------+------------+-------------------------------+---------------+-----------+--------+
|            4 |     900444555 | Eléctricos del Oriente | Ana Torres       | 3157894561 | eduardo@electricosoriente.com | Cra 27 #14-50 |         3 |      1 |
+--------------+---------------+------------------------+------------------+------------+-------------------------------+---------------+-----------+--------+
1 row in set (0.16 sec)




-- 10. Mostrar las ofertas de suministro cuyo tiempo estimado de entrega sea superior a siete días o cuyo precio de compra sea mayor a 500000.




mysql> SELECT * FROM producto_proveedor WHERE Dias_entrega > 7 OR Precio_compra > 500000;
Empty set (0.16 sec)

