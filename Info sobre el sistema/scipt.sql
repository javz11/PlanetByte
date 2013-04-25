CREATE TABLE T_ProductosR (
	cod NUMBER ( 5 ) NOT NULL,
	descripcion NUMBER ( 5 ) NOT NULL,
	visible NUMBER ( 5 ) NOT NULL,
	T_factura_ID NUMBER ( 10 ),
	T_productosInventario_ID NUMBER ( 10 ) NOT NULL,
	T_proveedor_ID NUMBER ( 10 ) NOT NULL,
	T_solicitudes_ID NUMBER ( 10 ) NOT NULL,
	CONSTRAINT PK_T_ProductosR11 PRIMARY KEY (T_solicitudes_ID, T_proveedor_ID, T_productosInventario_ID),
	CONSTRAINT TC_T_ProductosR12 UNIQUE (T_productosInventario_ID)
	)
/
CREATE INDEX TC_T_ProductosR19 ON T_ProductosR (T_factura_ID )
/
CREATE INDEX TC_T_ProductosR20 ON T_ProductosR (T_productosInventario_ID )
/
CREATE TABLE T_solicitudes (
	cod_solicitud NUMBER ( 5 ) NOT NULL,
	descripcion NUMBER ( 5 ) NOT NULL,
	T_solicitudes_ID NUMBER ( 10 ) NOT NULL,
	CONSTRAINT PK_T_solicitudes3 PRIMARY KEY (T_solicitudes_ID)
	)
/
CREATE TABLE T_cotizaciones (
	cod_cotizacion NUMBER ( 5 ) NOT NULL,
	descripcion NUMBER ( 5 ) NOT NULL,
	T_cotizaciones_ID NUMBER ( 10 ) NOT NULL,
	T_factura_ID NUMBER ( 10 ) NOT NULL,
	CONSTRAINT TC_T_cotizaciones9 UNIQUE (T_factura_ID),
	CONSTRAINT PK_T_cotizaciones4 PRIMARY KEY (T_cotizaciones_ID)
	)
/
CREATE INDEX TC_T_cotizaciones15 ON T_cotizaciones (T_factura_ID )
/
CREATE TABLE T_factura (
	nFactura NUMBER ( 5 ) NOT NULL,
	fecha NUMBER ( 5 ) NOT NULL,
	nCotizacion NUMBER ( 5 ) NOT NULL,
	tipo NUMBER ( 5 ) NOT NULL,
	T_factura_ID NUMBER ( 10 ) NOT NULL,
	CONSTRAINT PK_T_factura6 PRIMARY KEY (T_factura_ID)
	)
/
CREATE TABLE T_Item (
	cantidad NUMBER ( 5 ) NOT NULL,
	T_factura_ID NUMBER ( 10 ) NOT NULL,
	T_productosInventario_ID NUMBER ( 10 ) NOT NULL,
	CONSTRAINT PK_T_Item7 PRIMARY KEY (T_factura_ID, T_productosInventario_ID)
	)
/
CREATE INDEX TC_T_Item4 ON T_Item (T_factura_ID )
/
CREATE INDEX TC_T_Item5 ON T_Item (T_productosInventario_ID )
/
CREATE TABLE T_productos_falla (
	codigo NUMBER ( 5 ) NOT NULL,
	descripcion NUMBER ( 5 ) NOT NULL,
	T_productos_falla_ID NUMBER ( 10 ) NOT NULL,
	T_factura_ID NUMBER ( 10 ) NOT NULL,
	CONSTRAINT PK_T_productos_falla2 PRIMARY KEY (T_factura_ID, T_productos_falla_ID)
	)
/
CREATE TABLE T_item_cotizacion (
	cantidad NUMBER ( 5 ) NOT NULL,
	T_cotizaciones_ID NUMBER ( 10 ) NOT NULL,
	T_productosInventario_ID NUMBER ( 10 ) NOT NULL,
	CONSTRAINT PK_T_item_cotizacion5 PRIMARY KEY (T_cotizaciones_ID, T_productosInventario_ID)
	)
/
CREATE INDEX TC_T_item_cotizacion0 ON T_item_cotizacion (T_cotizaciones_ID )
/
CREATE INDEX TC_T_item_cotizacion1 ON T_item_cotizacion (T_productosInventario_ID )
/
CREATE TABLE T_falla (
	observacion NUMBER ( 5 ) NOT NULL,
	fecha_recepcion NUMBER ( 5 ) NOT NULL,
	fecha_entrega NUMBER ( 5 ) NOT NULL,
	estado NUMBER ( 5 ) NOT NULL,
	garantia NUMBER ( 5 ) NOT NULL,
	T_falla_ID NUMBER ( 10 ) NOT NULL,
	T_productos_falla_ID NUMBER ( 10 ) NOT NULL,
	T_factura_ID NUMBER ( 10 ) NOT NULL,
	CONSTRAINT PK_T_falla1 PRIMARY KEY (T_factura_ID, T_productos_falla_ID, T_falla_ID)
	)
/
CREATE TABLE T_proveedor (
	cedula NUMBER ( 5 ) NOT NULL,
	nombre NUMBER ( 5 ) NOT NULL,
	rif NUMBER ( 5 ) NOT NULL,
	tlf NUMBER ( 5 ) NOT NULL,
	direccion NUMBER ( 5 ) NOT NULL,
	correo NUMBER ( 5 ) NOT NULL,
	T_proveedor_ID NUMBER ( 10 ) NOT NULL,
	CONSTRAINT PK_T_proveedor0 PRIMARY KEY (T_proveedor_ID)
	)
/
CREATE TABLE T_productosInventario (
	codigo NUMBER ( 5 ) NOT NULL,
	precio NUMBER ( 5 ) NOT NULL,
	cantidad NUMBER ( 5 ) NOT NULL,
	garantia NUMBER ( 5 ) NOT NULL,
	precioReal NUMBER ( 5 ) NOT NULL,
	T_productosInventario_ID NUMBER ( 10 ) NOT NULL,
	CONSTRAINT PK_T_productosInventario8 PRIMARY KEY (T_productosInventario_ID)
	)
/
CREATE TABLE T_cliente (
	cedula NUMBER ( 5 ) NOT NULL,
	nombres NUMBER ( 5 ) NOT NULL,
	apellidos NUMBER ( 5 ) NOT NULL,
	direccion NUMBER ( 5 ) NOT NULL,
	eMail NUMBER ( 5 ) NOT NULL,
	telefono NUMBER ( 5 ) NOT NULL,
	usuario NUMBER ( 5 ) NOT NULL,
	contrasena NUMBER ( 5 ) NOT NULL,
	T_cotizaciones_ID NUMBER ( 10 ),
	T_factura_ID NUMBER ( 10 ),
	CONSTRAINT PK_T_cliente9 PRIMARY KEY (T_factura_ID, T_cotizaciones_ID),
	CONSTRAINT TC_T_cliente3 UNIQUE (T_cotizaciones_ID),
	CONSTRAINT TC_T_cliente7 UNIQUE (T_factura_ID)
	)
/
CREATE INDEX TC_T_cliente16 ON T_cliente (T_factura_ID )
/
CREATE INDEX TC_T_cliente17 ON T_cliente (T_cotizaciones_ID )
/
ALTER TABLE T_Item ADD ( CONSTRAINT FK_T_Item3 FOREIGN KEY (T_factura_ID) REFERENCES T_factura (T_factura_ID))
/
ALTER TABLE T_Item ADD ( CONSTRAINT FK_T_Item4 FOREIGN KEY (T_productosInventario_ID) REFERENCES T_productosInventario (T_productosInventario_ID))
/
ALTER TABLE T_productos_falla ADD ( CONSTRAINT FK_T_productos_falla14 FOREIGN KEY (T_factura_ID) REFERENCES T_factura (T_factura_ID))
/
ALTER TABLE T_cliente ADD ( CONSTRAINT FK_T_cliente5 FOREIGN KEY (T_factura_ID) REFERENCES T_factura (T_factura_ID))
/
ALTER TABLE T_cliente ADD ( CONSTRAINT FK_T_cliente2 FOREIGN KEY (T_cotizaciones_ID) REFERENCES T_cotizaciones (T_cotizaciones_ID))
/
ALTER TABLE T_cotizaciones ADD ( CONSTRAINT FK_T_cotizaciones6 FOREIGN KEY (T_factura_ID) REFERENCES T_factura (T_factura_ID))
/
ALTER TABLE T_ProductosR ADD ( CONSTRAINT FK_T_ProductosR7 FOREIGN KEY (T_factura_ID) REFERENCES T_factura (T_factura_ID))
/
ALTER TABLE T_ProductosR ADD ( CONSTRAINT FK_T_ProductosR8 FOREIGN KEY (T_productosInventario_ID) REFERENCES T_productosInventario (T_productosInventario_ID))
/
ALTER TABLE T_ProductosR ADD ( CONSTRAINT FK_T_ProductosR13 FOREIGN KEY (T_solicitudes_ID) REFERENCES T_solicitudes (T_solicitudes_ID))
/
ALTER TABLE T_ProductosR ADD ( CONSTRAINT FK_T_ProductosR11 FOREIGN KEY (T_proveedor_ID) REFERENCES T_proveedor (T_proveedor_ID))
/
ALTER TABLE T_falla ADD ( CONSTRAINT FK_T_falla12 FOREIGN KEY (T_factura_ID, T_productos_falla_ID) REFERENCES T_productos_falla (T_factura_ID, T_productos_falla_ID))
/
ALTER TABLE T_item_cotizacion ADD ( CONSTRAINT FK_T_item_cotizacion0 FOREIGN KEY (T_cotizaciones_ID) REFERENCES T_cotizaciones (T_cotizaciones_ID))
/
ALTER TABLE T_item_cotizacion ADD ( CONSTRAINT FK_T_item_cotizacion1 FOREIGN KEY (T_productosInventario_ID) REFERENCES T_productosInventario (T_productosInventario_ID))
/

