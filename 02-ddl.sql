PS C:\Users\camil> mysql -h mysql-26ec9d2c-basedatosnicolle08.b.aivencloud.com -P 15599 -u avnadmin -p

Enter password: ********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 176610
Server version: 8.4.8 Source distribution

Copyright (c) 2000, 2026, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| biblioteca         |
| defaultdb          |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
6 rows in set (0.23 sec)

mysql> create database ferreteria;
Query OK, 1 row affected (0.49 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| biblioteca         |
| defaultdb          |
| ferreteria         |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
7 rows in set (0.14 sec)

mysql> use ferreteria;
Databascreate table Producto (
    -> ID-producto INT PRIMARY KEY AUTO_INCREMENT,
    -> Ref-interna INT(10) UNIQUE,
    -> Nombre-comercial VARCHAR(50) NOT NULL,
    -> Descripcion VARCHAR(500) NOT NULL,
    -> Marca VARCHAR(30) NOT NULL,
    -> Und-venta VARCHAR(10),
    -> Precio-venta FLOAT(10) NOT NULL,
    -> Estado BOOLEAN NOT NULL DEFAULT TRUE,
    -> Cant-disponible INT(20) NOT NULL,
    -> Cant-min INT(20) NOT NULL,
    -> Cant-max INT(20) NOT NULL,
    -> ^C
mysql> Create table ubicacion (
    -> ID-ubicacion INT PRIMARY KEY AUTO_INCREMENT,
    -> Pasillo INT(2) NOT NULL,
    -> Estante INT(3) NOT NULL);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-ubicacion INT PRIMARY KEY AUTO_INCREMENT,
Pasillo INT(2) NOT NULL,
Estante INT(' at line 2
mysql> Create table ubicacion (
    -> ID_ubicacion INT PRIMARY KEY AUTO_INCREMENT,
    -> Pasillo INT(2) NOT NULL,
    -> Estante INT(3) NOT NULL);
Query OK, 0 rows affected, 2 warnings (0.41 sec)

mysql> Describe ubicacion
    -> ;
+--------------+------+------+-----+---------+----------------+
| Field        | Type | Null | Key | Default | Extra          |
+--------------+------+------+-----+---------+----------------+
| ID_ubicacion | int  | NO   | PRI | NULL    | auto_increment |
| Pasillo      | int  | NO   |     | NULL    |                |
| Estante      | int  | NO   |     | NULL    |                |
+--------------+------+------+-----+---------+----------------+
3 rows in set (0.16 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| biblioteca         |
| defaultdb          |
| ferreteria         |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
7 rows in set (0.24 sec)

mysql> use ferreteria;
Database changed
mysql> describe ubicacion;
+--------------+------+------+-----+---------+----------------+
| Field        | Type | Null | Key | Default | Extra          |
+--------------+------+------+-----+---------+----------------+
| ID_ubicacion | int  | NO   | PRI | NULL    | auto_increment |
| Pasillo      | int  | NO   |     | NULL    |                |
| Estante      | int  | NO   |     | NULL    |                |
+--------------+------+------+-----+---------+----------------+
3 rows in set (0.24 sec)

mysql> create table categoria (
    -> ID_categoria INT(20) PRIMARY KEY AUTO_INCREMENT,
    -> Ref_interna INT(10) NOT NULL,
    -> ^C
mysql> create table categoria (
    -> ID_categoria INT(20) PRIMARY KEY AUTO_INCREMENT,
    -> Ref_interna INT(10) NOT NULL UNIQUE,
    -> Descripcion VARCHAR(500));
Query OK, 0 rows affected, 2 warnings (0.56 sec)

mysql> describe categoria;
+--------------+--------------+------+-----+---------+----------------+
| Field        | Type         | Null | Key | Default | Extra          |
+--------------+--------------+------+-----+---------+----------------+
| ID_categoria | int          | NO   | PRI | NULL    | auto_increment |
| Ref_interna  | int          | NO   | UNI | NULL    |                |
| Descripcion  | varchar(500) | YES  |     | NULL    |                |
+--------------+--------------+------+-----+---------+----------------+
3 rows in set (0.16 sec)

mysql> create table producto (
    -> ID_producto INT PRIMARY KEY AUTO_INCREMENT,
    -> Ref_interna INT(10) NOT NULL UNIQUE,
    -> Nombre VARCHAR(50) NOT NULL,
    -> Descripcion VARCHAR(500),
    -> Marca VARCHAR(30),
    -> Und_venta VARCHAR(10) NOT NULL,
    -> Precio_venta FLOAT(10) NOT NULL,
    -> Estado BOOLEAN NOT NULL,
    -> Cant_disponible INT(20) NOT NULL,
    -> Cant_min INT(20),
    -> Cant_max INT(20),
    -> ID_categoria INT(20) NOT NULL,
    -> FOREIGN KEY (ID_categoria) REFERENCES categoria(ID_categoria),
    -> ID_ubicacion INT(20) NOT NULL,
    -> FOREIGN KEY (ID_ubicacion) REFERENCES ubicacion(ID_ubicacion));
Query OK, 0 rows affected, 6 warnings (0.18 sec)

mysql> create table ciudad (
    -> ID_ciudad INT(20) PRIMARY KEY AUTO_INCREMENT,
    -> Nombre VARCHAR(20) NOT NULL);
Query OK, 0 rows affected, 1 warning (0.16 sec)

mysql> create table proveedor (
    -> ID_proveedor INT(10) PRIMARY KEY AUTO_INCREMENT,
    -> Id_tributaria INT(20) UNIQUE,
    -> Nombre VARCHAR(30) NOT NULL,
    -> Persona_contacto VARCHAR(30),
    -> Telefono INT(12) NOT NULL,
    -> Correo VARCHAR(50),
    -> Direccion VARCHAR(50),
    -> ID_ciudad INT(20) NOT NULL,
    -> FOREIGN KEY (ID_ciudad) REFERENCES ciudad(ID_ciudad),
    -> Estado BOOLEAN NOT NULL);
Query OK, 0 rows affected, 4 warnings (0.17 sec)

mysql> CREATE TABLE producto_proveedor (
    ->     ID_producto INT(10) NOT NULL,
    ->     ID_proveedor INT(10) NOT NULL,
    ->     Ref_proveedor INT(20),
    ->     Precio_compra FLOAT(20),
    ->     Dias_entrega INT(10),
    ->     PRIMARY KEY (ID_producto, ID_proveedor),
    ->     FOREIGN KEY (ID_producto) REFERENCES producto(ID_producto),
    ->     FOREIGN KEY (ID_proveedor) REFERENCES proveedor(ID_proveedor)
    -> );
Query OK, 0 rows affected, 4 warnings (0.18 sec)

mysql> Describe categoria;
+--------------+--------------+------+-----+---------+----------------+
| Field        | Type         | Null | Key | Default | Extra          |
+--------------+--------------+------+-----+---------+----------------+
| ID_categoria | int          | NO   | PRI | NULL    | auto_increment |
| Ref_interna  | int          | NO   | UNI | NULL    |                |
| Descripcion  | varchar(500) | YES  |     | NULL    |                |
+--------------+--------------+------+-----+---------+----------------+
3 rows in set (0.15 sec)

mysql> Describe producto;
+-----------------+--------------+------+-----+---------+----------------+
| Field           | Type         | Null | Key | Default | Extra          |
+-----------------+--------------+------+-----+---------+----------------+
| ID_producto     | int          | NO   | PRI | NULL    | auto_increment |
| Ref_interna     | int          | NO   | UNI | NULL    |                |
| Nombre          | varchar(50)  | NO   |     | NULL    |                |
| Descripcion     | varchar(500) | YES  |     | NULL    |                |
| Marca           | varchar(30)  | YES  |     | NULL    |                |
| Und_venta       | varchar(10)  | NO   |     | NULL    |                |
| Precio_venta    | float        | NO   |     | NULL    |                |
| Estado          | tinyint(1)   | NO   |     | NULL    |                |
| Cant_disponible | int          | NO   |     | NULL    |                |
| Cant_min        | int          | YES  |     | NULL    |                |
| Cant_max        | int          | YES  |     | NULL    |                |
| ID_categoria    | int          | NO   | MUL | NULL    |                |
| ID_ubicacion    | int          | NO   | MUL | NULL    |                |
+-----------------+--------------+------+-----+---------+----------------+
13 rows in set (0.15 sec)

mysql> Describe ciudad;
+-----------+-------------+------+-----+---------+----------------+
| Field     | Type        | Null | Key | Default | Extra          |
+-----------+-------------+------+-----+---------+----------------+
| ID_ciudad | int         | NO   | PRI | NULL    | auto_increment |
| Nombre    | varchar(20) | NO   |     | NULL    |                |
+-----------+-------------+------+-----+---------+----------------+
2 rows in set (0.15 sec)

mysql> Describe proveedor;
+------------------+-------------+------+-----+---------+----------------+
| Field            | Type        | Null | Key | Default | Extra          |
+------------------+-------------+------+-----+---------+----------------+
| ID_proveedor     | int         | NO   | PRI | NULL    | auto_increment |
| Id_tributaria    | int         | YES  | UNI | NULL    |                |
| Nombre           | varchar(30) | NO   |     | NULL    |                |
| Persona_contacto | varchar(30) | YES  |     | NULL    |                |
| Telefono         | int         | NO   |     | NULL    |                |
| Correo           | varchar(50) | YES  |     | NULL    |                |
| Direccion        | varchar(50) | YES  |     | NULL    |                |
| ID_ciudad        | int         | NO   | MUL | NULL    |                |
| Estado           | tinyint(1)  | NO   |     | NULL    |                |
+------------------+-------------+------+-----+---------+----------------+
9 rows in set (0.16 sec)

mysql> describe producto_proveedor;
+---------------+-------+------+-----+---------+-------+
| Field         | Type  | Null | Key | Default | Extra |
+---------------+-------+------+-----+---------+-------+
| ID_producto   | int   | NO   | PRI | NULL    |       |
| ID_proveedor  | int   | NO   | PRI | NULL    |       |
| Ref_proveedor | int   | YES  |     | NULL    |       |
| Precio_compra | float | YES  |     | NULL    |       |
| Dias_entrega  | int   | YES  |     | NULL    |       |
+---------------+-------+------+-----+---------+-------+
5 rows in set (0.17 sec)