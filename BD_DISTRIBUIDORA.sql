--TABLA PROVEEDORES
CREATE TABLE PROVEEDORES(
    ID_PROVEEDOR NUMBER NOT NULL,
    NOMBRE_PROVEEDOR VARCHAR2(100) NOT NULL,
    FECHA_ALTA DATE DEFAULT SYSDATE,
    FECHA_MODIFICACION DATE,

    CONSTRAINT pk_id_proveedor_proveedores PRIMARY KEY (ID_PROVEEDOR)
);
--COMENTARIO DE LA TABLA PROVEEDORES
COMMENT ON TABLE PROVEEDORES IS 'Tabla en donde se almacena los PROVEEDORES';
COMMENT ON COLUMN PROVEEDORES.ID_PROVEEDOR IS 'Llave primaria de la tabla PROVEEDORES';
COMMENT ON COLUMN PROVEEDORES.NOMBRE_PROVEEDOR IS 'Nombre del proveedor de productos';
COMMENT ON COLUMN PROVEEDORES.FECHA_ALTA IS 'Fecha de Alta de los PROVEEDORES';
COMMENT ON COLUMN PROVEEDORES.FECHA_MODIFICACION IS 'Fecha de Modificacion de los PROVEEDORES';
COMMIT;
--SECUENCIA DE LA PK DE LA TABLA PROVEEDORES
CREATE SEQUENCE SEQ_ID_PROVEEDORES START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;
COMMIT;

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--TABLA CATEGORIA
CREATE TABLE CATEGORIAS(
    ID_CATEGORIA NUMBER NOT NULL,
    NOMBRE_CATEGORIA VARCHAR2(100) NOT NULL,
    DESCRIPCION_CATEGORIA VARCHAR2(300) NOT NULL,
    FECHA_ALTA DATE DEFAULT SYSDATE,
    FECHA_MODIFICACION DATE,

    CONSTRAINT pk_id_categoria_categorias PRIMARY KEY (ID_CATEGORIA)

);
--COMENTARIOS DE LA TABLA CATEGORIAS
COMMENT ON TABLE CATEGORIAS IS 'Tabla donde se almacenan las CATEGORIAS de los productos';
COMMENT ON COLUMN CATEGORIAS.ID_CATEGORIA IS 'Llave primaria de la tabla CATEGORIAS';
COMMENT ON COLUMN CATEGORIAS.NOMBRE_CATEGORIA IS 'Nombre de la categoria';
COMMENT ON COLUMN CATEGORIAS.DESCRIPCION_CATEGORIA IS 'Descripcion de la CATEGORIA';
COMMENT ON COLUMN CATEGORIAS.FECHA_ALTA IS 'Fecha Alta de la CATEGORIA';
COMMENT ON COLUMN CATEGORIAS.FECHA_MODIFICACION IS 'Fecha Modificacion de la CATEGORIA';
COMMIT;
--SECUENCIAS DE LA PK DE LA TABLA CATEGORIAS
CREATE SEQUENCE SEQ_ID_CATEGORIA START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;
COMMIT;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--TABLA PRODUCTOS
CREATE TABLE PRODUCTOS(
    ID_PRODUCTO NUMBER NOT NULL,
    ID_PROVEEDOR NUMBER NOT NULL,
    ID_CATEGORIA NUMBER NOT NULL,
    NOMBRE_PRODUCTO VARCHAR2(100) NOT NULL,
    CALIDAD_PRODUCTO VARCHAR2(30) NOT NULL,
    DESCRIPCION_PRODUCTO VARCHAR2(300) NOT NULL,
    PRECIO_PRODUCTO NUMBER(10,2) NOT NULL,
    FECHA_ALTA DATE DEFAULT SYSDATE,
    FECHA_MODIFICACION DATE,

    CONSTRAINT pk_id_producto_productos PRIMARY KEY (ID_PRODUCTO),
    CONSTRAINT fk_id_proveedores_productos FOREIGN KEY (ID_PROVEEDOR) REFERENCES PROVEEDORES (ID_PROVEEDOR),
    CONSTRAINT fk_id_categoria_productos FOREIGN KEY (ID_CATEGORIA) REFERENCES CATEGORIAS (ID_CATEGORIA)
);
---COMENTARIOS DE LA TABLA PRODUCTOS
COMMENT ON TABLE PRODUCTOS IS 'Tabla en donde se almacenan los productos';
COMMENT ON COLUMN PRODUCTOS.ID_PRODUCTO IS 'Llave primaria de la tabla PRODUCTOS';
COMMENT ON COLUMN PRODUCTOS.ID_PROVEEDOR IS 'Llave foranes que hace referencia a la tabla PROVEEDORES';
COMMENT ON COLUMN PRODUCTOS.ID_CATEGORIA IS 'Llave foranea que hace referencia a la tabla CATEGORIA';
COMMENT ON COLUMN PRODUCTOS.NOMBRE_PRODUCTO IS 'Nombre de los productos';
COMMENT ON COLUMN PRODUCTOS.CALIDAD_PRODUCTO IS 'Calidad de los productos';
COMMENT ON COLUMN PRODUCTOS.DESCRIPCION_PRODUCTO  IS 'Descripcion de los productos';
COMMENT ON COLUMN PRODUCTOS.FECHA_ALTA IS 'Fecha Alta de los productos';
COMMENT ON COLUMN PRODUCTOS.FECHA_MODIFICACION IS 'Fecha Modificacion de los productos';
COMMIT;
--SECUENCIA DE LA PK DE LA TABLA PRODUCTOS
CREATE SEQUENCE  SEQ_ID_PRODUCTO START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;
COMMIT;
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE PRODUCTOS_DIS(
    ID_PRO_DIS NUMBER NOT NULL,
    ID_CATEGORIA NUMBER NOT NULL,
    NOMRE_PRO_DIS VARCHAR2(100) NOT NULL,
    CALIDAD_PRO_DIS VARCHAR2(30) NOT NULL,
    DESCRIPCION_PRO_DIS VARCHAR2(300) NOT NULL,
    PRECIO_PRO_DIS NUMBER(10,2) NOT NULL,
    FECHA_ALTA DATE DEFAULT SYSDATE,
    FECHA_MODIFICACION DATE,

    CONSTRAINT pk_id_pro_dis_productos_dis PRIMARY KEY (ID_PRO_DIS),
    CONSTRAINT fk_id_categoria_productos_dis FOREIGN KEY (ID_CATEGORIA) REFERENCES CATEGORIAS(ID_CATEGORIA)
);
--COMENTARIOS DE LA TABLA PRODUCTOS_DIS
COMMENT ON TABLE PRODUCTOS_DIS IS 'Tabla que contiene loa productos de la Distribuidora';
COMMENT ON COLUMN PRODUCTOS_DIS.ID_PRO_DIS IS 'Llave primaria de la tabla PRODUCTOS_DIS';
COMMENT ON COLUMN PRODUCTOS_DIS.ID_CATEGORIA IS 'Llave foranea que hace referencia a la tabla CATEGORIAS';
COMMENT ON COLUMN PRODUCTOS_DIS.NOMRE_PRO_DIS IS 'Nombre del producto';
COMMENT ON COLUMN PRODUCTOS_DIS.CALIDAD_PRO_DIS IS 'Calidad del producto';
COMMENT ON COLUMN PRODUCTOS_DIS.DESCRIPCION_PRO_DIS IS 'Descripcion de los productos';
COMMENT ON COLUMN PRODUCTOS_DIS.PRECIO_PRO_DIS IS 'Precio de los productos';
COMMENT ON COLUMN PRODUCTOS_DIS.FECHA_ALTA IS 'Fecha Alta de los productos';
COMMENT ON COLUMN PRODUCTOS_DIS.FECHA_MODIFICACION IS 'Fecha Modificacion de los productos';
COMMIT;
--CREACION DE LA SECUENCIA DE LA PK DE PRODUCTOS_DIS
CREATE SEQUENCE SEQ_ID_PRO_DIS START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--CREACION DE TABLA CLIENTES
CREATE TABLE CLIENTES(
    ID_CLIENTE NUMBER NOT NULL,
    NOMBRE VARCHAR2(50) NOT NULL,
    APATERNO VARCHAR2(50) NOT NULL,
    AMATERNO VARCHAR2(50) NOT NULL,
    CORREO VARCHAR2(100) NOT NULL,
    TELEFONO VARCHAR2(15) NOT NULL,
    FECHA_ALTA DATE DEFAULT SYSDATE,
    FECHA_MODIFICACION DATE,
    PRESUPUESTO NUMBER(10,2) NOT NULL,

    CONSTRAINT pk_id_cliente_clientes primary key (ID_CLIENTE)
);
--COMENTARIOS DE LA TABLA
COMMENT ON TABLE CLIENTES IS 'Tabla donde se van almacenar los datos de los clientes';
COMMENT ON COLUMN CLIENTES.ID_CLIENTE IS 'Llave primaria de la tabla CLIENTES';
COMMENT ON COLUMN CLIENTES.NOMBRE IS 'Nombre del cliente';
COMMENT ON COLUMN CLIENTES.APATERNO IS 'Apellido paterno';
COMMENT ON COLUMN CLIENTES.AMATERNO IS 'Apellido materno';
COMMENT ON COLUMN CLIENTES.CORREO IS 'Correo del cliente';
COMMENT ON COLUMN CLIENTES.TELEFONO IS 'Telefono del cliente';
COMMENT ON COLUMN CLIENTES.FECHA_ALTA IS 'Fecha Alta del cliente';
COMMENT ON COLUMN CLIENTES.FECHA_MODIFICACION IS 'Fecha Modificacion del cliente';
COMMENT ON COLUMN CLIENTES.PRESUPUESTO IS 'Presupuesto del cliente';
COMMIT;
--SECUENCIAS DE LA TABLA CLIENTES
CREATE SEQUENCE SEQ_ID_CLIENTE START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Inserts
--PROVEEDORES
INSERT INTO PROVEEDORES (ID_PROVEEDOR, NOMBRE_PROVEEDOR, FECHA_ALTA, FECHA_MODIFICACION)
VALUES (1, 'Proveedor Tech SA', DATE '2024-01-01', DATE '2024-01-05');

INSERT INTO PROVEEDORES (ID_PROVEEDOR, NOMBRE_PROVEEDOR, FECHA_ALTA, FECHA_MODIFICACION)
VALUES (2, 'Distribuciones Lopez', DATE '2024-02-15', NULL);

INSERT INTO PROVEEDORES (ID_PROVEEDOR, NOMBRE_PROVEEDOR, FECHA_ALTA, FECHA_MODIFICACION)
VALUES (3, 'Suministros Industriales MX', DATE '2024-03-10', DATE '2024-03-12');

--CATEGORIAS
INSERT INTO CATEGORIAS (ID_CATEGORIA, NOMBRE_CATEGORIA, DESCRIPCION_CATEGORIA, FECHA_ALTA, FECHA_MODIFICACION)
VALUES (1, 'Electrónica', 'Productos electrónicos y gadgets', DATE '2024-01-05', NULL);

INSERT INTO CATEGORIAS (ID_CATEGORIA, NOMBRE_CATEGORIA, DESCRIPCION_CATEGORIA, FECHA_ALTA, FECHA_MODIFICACION)
VALUES (2, 'Hogar', 'Artículos para el hogar', DATE '2024-01-20', DATE '2024-01-25');

INSERT INTO CATEGORIAS (ID_CATEGORIA, NOMBRE_CATEGORIA, DESCRIPCION_CATEGORIA, FECHA_ALTA, FECHA_MODIFICACION)
VALUES (3, 'Oficina', 'Material de oficina', DATE '2024-01-25', NULL);

--PRODUCTOS
INSERT INTO PRODUCTOS (
    ID_PRODUCTO, ID_PROVEEDOR, ID_CATEGORIA,
    NOMBRE_PRODUCTO, CALIDAD_PRODUCTO,
    DESCRIPCION_PRODUCTO, PRECIO_PRODUCTO,
    FECHA_ALTA, FECHA_MODIFICACION
)
VALUES (
    1, 1, 1,
    'Laptop HP', 'Alta',
    'Laptop de 16GB RAM y 512GB SSD', 15000.00,
    DATE '2024-04-01',
    DATE '2024-04-03'
);

INSERT INTO PRODUCTOS (
    ID_PRODUCTO, ID_PROVEEDOR, ID_CATEGORIA,
    NOMBRE_PRODUCTO, CALIDAD_PRODUCTO,
    DESCRIPCION_PRODUCTO, PRECIO_PRODUCTO,
    FECHA_ALTA, FECHA_MODIFICACION
)
VALUES (
    2, 2, 2,
    'Aspiradora', 'Media',
    'Aspiradora doméstica potente', 2500.00,
    DATE '2024-04-05',
    NULL
);

INSERT INTO PRODUCTOS (
    ID_PRODUCTO, ID_PROVEEDOR, ID_CATEGORIA,
    NOMBRE_PRODUCTO, CALIDAD_PRODUCTO,
    DESCRIPCION_PRODUCTO, PRECIO_PRODUCTO,
    FECHA_ALTA, FECHA_MODIFICACION
)
VALUES (
    3, 3, 3,
    'Silla de Oficina', 'Alta',
    'Silla ergonómica ajustable', 3200.00,
    DATE '2024-04-10',
    DATE '2024-04-11'
);
COMMIT;

---PRODUCTOS_DIS
INSERT INTO PRODUCTOS_DIS (
    ID_PRO_DIS, ID_CATEGORIA,
    NOMRE_PRO_DIS, CALIDAD_PRO_DIS,
    DESCRIPCION_PRO_DIS, PRECIO_PRO_DIS,
    FECHA_ALTA, FECHA_MODIFICACION
)
VALUES (
    1, 1,
    'Tablet Samsung', 'Alta',
    'Tablet de 10 pulgadas', 8000.00,
    DATE '2024-04-12',
    NULL
);

INSERT INTO PRODUCTOS_DIS (
    ID_PRO_DIS, ID_CATEGORIA,
    NOMRE_PRO_DIS, CALIDAD_PRO_DIS,
    DESCRIPCION_PRO_DIS, PRECIO_PRO_DIS,
    FECHA_ALTA, FECHA_MODIFICACION
)
VALUES (
    2, 2,
    'Licuadora', 'Media',
    'Licuadora de 5 velocidades', 1200.00,
    DATE '2024-04-15',
    DATE '2024-04-16'
);
COMMIT;

--CLIENTES
INSERT INTO CLIENTES (
    ID_CLIENTE, NOMBRE, APATERNO, AMATERNO,
    CORREO, TELEFONO, PRESUPUESTO,
    FECHA_ALTA, FECHA_MODIFICACION
)
VALUES (
    1, 'Juan', 'Pérez', 'García',
    'juan.perez@email.com', '5512345678', 20000.00,
    DATE '2024-03-01',
    NULL
);

INSERT INTO CLIENTES (
    ID_CLIENTE, NOMBRE, APATERNO, AMATERNO,
    CORREO, TELEFONO, PRESUPUESTO,
    FECHA_ALTA, FECHA_MODIFICACION
)
VALUES (
    2, 'María', 'López', 'Hernández',
    'maria.lopez@email.com', '5587654321', 15000.00,
    DATE '2024-03-05',
    DATE '2024-03-06'
);

INSERT INTO CLIENTES (
    ID_CLIENTE, NOMBRE, APATERNO, AMATERNO,
    CORREO, TELEFONO, PRESUPUESTO,
    FECHA_ALTA, FECHA_MODIFICACION
)
VALUES (
    3, 'Carlos', 'Ramírez', 'Torres',
    'carlos.ramirez@email.com', '5599988776', 10000.00,
    DATE '2024-03-10',
    NULL
);
COMMIT;
