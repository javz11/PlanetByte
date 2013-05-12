/*
Created		11/05/2013
Modified		11/05/2013
Project		Gestion de ventas para PLANETBYTE
Model		PlanetByte
Company		PlanetByte
Author		Nathaly Garnica
Version		1.0
Database		mySQL 5 
*/










drop table IF EXISTS 24C_Facturas;
drop table IF EXISTS 23C_Cotizaciones;
drop table IF EXISTS 22C_Soportes;
drop table IF EXISTS 21C_EdoFallas;
drop table IF EXISTS 20C_Fallas;
drop table IF EXISTS 19C_MovimientoInventarios;
drop table IF EXISTS 18C_DetalleFacturas;
drop table IF EXISTS 17C_DetallePedidos;
drop table IF EXISTS 16C_DetalleCompras;
drop table IF EXISTS 14C_PlanetByte;
drop table IF EXISTS 13C_Encabezado;
drop table IF EXISTS 12C_Pvps;
drop table IF EXISTS 11C_Marcas;
drop table IF EXISTS 10C_Modelos;
drop table IF EXISTS 09C_Clientes;
drop table IF EXISTS 08C_Productos;
drop table IF EXISTS 07C_Acciones;
drop table IF EXISTS 06C_Bitacoras;
drop table IF EXISTS 05C_Pedidos;
drop table IF EXISTS 04C_Compras;
drop table IF EXISTS 03C_Usuarios;
drop table IF EXISTS 02C_Roles;
drop table IF EXISTS 01C_Proveedores;




Create table 01C_Proveedores (
	01A_IdProveedores Int NOT NULL AUTO_INCREMENT,
	01A_RazonSocial Varchar(250) NOT NULL,
	01A_Rif Varchar(15) NOT NULL,
	01A_Direccion Text NOT NULL,
	01A_Telefono Varchar(12) NOT NULL,
	Index AI_01A_IdProveedores (01A_IdProveedores),
 Primary Key (01A_IdProveedores)) ENGINE = InnoDB;

Create table 02C_Roles (
	02A_IdRoles Int NOT NULL AUTO_INCREMENT,
	02A_Descripcion Varchar(150) NOT NULL,
	Index AI_02A_IdRoles (02A_IdRoles),
 Primary Key (02A_IdRoles)) ENGINE = InnoDB;

Create table 03C_Usuarios (
	03A_idUsuarios Int NOT NULL AUTO_INCREMENT,
	03A_Nombres Varchar(150) NOT NULL,
	03A_Apellidos Varchar(150) NOT NULL,
	03A_Correo Varchar(200) NOT NULL,
	03A_Movil Varchar(20) NOT NULL,
	03A_TelCasa Varchar(20) NOT NULL,
	03A_Direccion Varchar(250) NOT NULL,
	03A_Usuario Varchar(20) NOT NULL,
	03A_Contrasenha Varchar(20) NOT NULL,
	02A_IdRoles Int NOT NULL,
	Index AI_03A_idUsuarios (03A_idUsuarios),
 Primary Key (03A_idUsuarios)) ENGINE = InnoDB;

Create table 04C_Compras (
	04A_IdCompras Int NOT NULL AUTO_INCREMENT,
	04A_NroFactura Varchar(10) NOT NULL,
	04A_Fecha Timestamp NOT NULL,
	03A_idUsuarios Int NOT NULL,
	01A_IdProveedores Int NOT NULL,
	Index AI_04A_IdCompras (04A_IdCompras),
 Primary Key (04A_IdCompras)) ENGINE = InnoDB;

Create table 05C_Pedidos (
	05A_IdPedidos Int NOT NULL AUTO_INCREMENT,
	05A_FechaPedido Timestamp NOT NULL,
	03A_idUsuarios Int NOT NULL,
	01A_IdProveedores Int NOT NULL,
	Index AI_05A_IdPedidos (05A_IdPedidos),
 Primary Key (05A_IdPedidos,01A_IdProveedores)) ENGINE = InnoDB;

Create table 06C_Bitacoras (
	06A_idBitacoras Int NOT NULL AUTO_INCREMENT,
	06A_Fecha Timestamp NOT NULL,
	06A_Ip Varchar(20) NOT NULL,
	06A_Url Varchar(50) NOT NULL,
	07A_idAcciones Int NOT NULL,
	03A_idUsuarios Int NOT NULL,
	Index AI_06A_idBitacoras (06A_idBitacoras),
 Primary Key (06A_idBitacoras)) ENGINE = InnoDB;

Create table 07C_Acciones (
	07A_idAcciones Int NOT NULL AUTO_INCREMENT,
	07A_Descripcion Varchar(200) NOT NULL,
	Index AI_07A_idAcciones (07A_idAcciones),
 Primary Key (07A_idAcciones)) ENGINE = InnoDB;

Create table 08C_Productos (
	08A_IdProductos Int NOT NULL AUTO_INCREMENT,
	08A_Nombre Varchar(200) NOT NULL,
	08A_Descripcion Varchar(250) NOT NULL,
	08A_Exento Char(1) NOT NULL DEFAULT N,
	08A_GarantiaDias Int NOT NULL,
	10A_IdModelos Int NOT NULL,
	Index AI_08A_IdProductos (08A_IdProductos),
 Primary Key (08A_IdProductos)) ENGINE = InnoDB;

Create table 09C_Clientes (
	09A_IdClientes Int NOT NULL AUTO_INCREMENT,
	09A_RazonSocial Varchar(200) NOT NULL,
	09A_Direccion Varchar(250) NOT NULL,
	09A_Rif Varchar(15) NOT NULL,
	09a_Telefono Varchar(12) NOT NULL,
	Index AI_09A_IdClientes (09A_IdClientes),
 Primary Key (09A_IdClientes)) ENGINE = InnoDB;

Create table 10C_Modelos (
	10A_IdModelos Int NOT NULL AUTO_INCREMENT,
	10A_Descripcion Varchar(200) NOT NULL,
	11A_IdMarcas Int NOT NULL,
	Index AI_10A_IdModelos (10A_IdModelos),
 Primary Key (10A_IdModelos)) ENGINE = InnoDB;

Create table 11C_Marcas (
	11A_IdMarcas Int NOT NULL AUTO_INCREMENT,
	11A_Descripcion Varchar(200) NOT NULL,
	Index AI_11A_IdMarcas (11A_IdMarcas),
 Primary Key (11A_IdMarcas)) ENGINE = InnoDB;

Create table 12C_Pvps (
	12A_IdPvps Int NOT NULL AUTO_INCREMENT,
	12A_FechaIni Timestamp NOT NULL,
	12A_Monto Float NOT NULL,
	08A_IdProductos Int NOT NULL,
	Index AI_12A_IdPvps (12A_IdPvps),
 Primary Key (12A_IdPvps)) ENGINE = InnoDB;

Create table 13C_Encabezado (
	03A_idUsuarios Int NOT NULL,
	24A_IdFacturas Int NOT NULL,
	23A_IdCotizaciones Int NOT NULL,
	09A_IdClientes Int NOT NULL,
	13A_FechaEmision Timestamp NOT NULL,
	13A_Impuesto Int NOT NULL,
 Primary Key (24A_IdFacturas,23A_IdCotizaciones)) ENGINE = InnoDB;

Create table 14C_PlanetByte (
	14A_idPlanetB Int NOT NULL AUTO_INCREMENT,
	14A_Slogan Varchar(20) NOT NULL,
	14A_Rif Varchar(15) NOT NULL,
	14A_LogoTexto Varchar(200) NOT NULL,
	14a_ImagenLogo Varchar(150) NOT NULL,
	14A_Mision Text NOT NULL,
	14A_Vision Text NOT NULL,
	14A_Direccion Varchar(300) NOT NULL,
	14A_TelefonoPrincipal Varchar(20) NOT NULL,
	14A_TelefonoFax Varchar(20) NOT NULL,
	14A_CorreoElectronico Varchar(200) NOT NULL,
	14A_ImagenReportes Varchar(150) NOT NULL,
	14A_FechaDatos Timestamp NOT NULL,
	14A_OtroTexto Text NOT NULL,
	Index AI_14A_idPlanetB (14A_idPlanetB),
 Primary Key (14A_idPlanetB)) ENGINE = InnoDB;

Create table 16C_DetalleCompras (
	04A_IdCompras Int NOT NULL,
	08A_IdProductos Int NOT NULL,
	16A_Cantidad Int NOT NULL,
	16A_Costo Float NOT NULL,
 Primary Key (04A_IdCompras,08A_IdProductos)) ENGINE = InnoDB;

Create table 17C_DetallePedidos (
	05A_IdPedidos Int NOT NULL,
	01A_IdProveedores Int NOT NULL,
	08A_IdProductos Int NOT NULL,
	17A_Cantidad Int NOT NULL,
 Primary Key (05A_IdPedidos,01A_IdProveedores,08A_IdProductos)) ENGINE = InnoDB;

Create table 18C_DetalleFacturas (
	08A_IdProductos Int NOT NULL,
	18A_Cantidad Int NOT NULL,
	18A_Costo Float NOT NULL,
	24A_IdFacturas Int NOT NULL,
	23A_IdCotizaciones Int NOT NULL,
 Primary Key (08A_IdProductos,24A_IdFacturas,23A_IdCotizaciones)) ENGINE = InnoDB;

Create table 19C_MovimientoInventarios (
	04A_IdCompras Int NOT NULL,
	08A_IdProductos Int NOT NULL,
	24A_IdFacturas Int NOT NULL,
	23A_IdCotizaciones Int NOT NULL) ENGINE = InnoDB;

Create table 20C_Fallas (
	20A_IdFallas Int NOT NULL AUTO_INCREMENT,
	21A_IdEdoF Int NOT NULL,
	20A_Descripcion Text NOT NULL,
	20A_FechaIngreso Timestamp NOT NULL,
	20A_Observacion Varchar(300),
	20A_Respuesta Varbinary(200) NOT NULL,
	08A_IdProductos Int NOT NULL,
	24A_IdFacturas Int NOT NULL,
	23A_IdCotizaciones Int NOT NULL,
	Index AI_20A_IdFallas (20A_IdFallas),
 Primary Key (20A_IdFallas)) ENGINE = InnoDB;

Create table 21C_EdoFallas (
	21A_IdEdoF Int NOT NULL AUTO_INCREMENT,
	21A_Descripcion Varchar(50) NOT NULL,
	Index AI_21A_IdEdoF (21A_IdEdoF),
 Primary Key (21A_IdEdoF)) ENGINE = InnoDB;

Create table 22C_Soportes (
	22A_idSoportes Int NOT NULL AUTO_INCREMENT,
	22A_Descripcion Text NOT NULL,
	20A_IdFallas Int NOT NULL,
	Index AI_22A_idSoportes (22A_idSoportes),
 Primary Key (22A_idSoportes)) ENGINE = InnoDB;

Create table 23C_Cotizaciones (
	23A_IdCotizaciones Int NOT NULL AUTO_INCREMENT,
	23A_Estado Char(2) NOT NULL DEFAULT SC,
	Index AI_23A_IdCotizaciones (23A_IdCotizaciones),
 Primary Key (23A_IdCotizaciones)) ENGINE = InnoDB;

Create table 24C_Facturas (
	24A_IdFacturas Int NOT NULL AUTO_INCREMENT,
	24A_Estado Char(2) NOT NULL DEFAULT NF,
	Index AI_24A_IdFacturas (24A_IdFacturas),
 Primary Key (24A_IdFacturas)) ENGINE = InnoDB;









Alter table 04C_Compras add Foreign Key (01A_IdProveedores) references 01C_Proveedores (01A_IdProveedores) on delete  restrict on update  restrict;
Alter table 05C_Pedidos add Foreign Key (01A_IdProveedores) references 01C_Proveedores (01A_IdProveedores) on delete  restrict on update  restrict;
Alter table 03C_Usuarios add Foreign Key (02A_IdRoles) references 02C_Roles (02A_IdRoles) on delete  restrict on update  restrict;
Alter table 04C_Compras add Foreign Key (03A_idUsuarios) references 03C_Usuarios (03A_idUsuarios) on delete  restrict on update  restrict;
Alter table 05C_Pedidos add Foreign Key (03A_idUsuarios) references 03C_Usuarios (03A_idUsuarios) on delete  restrict on update  restrict;
Alter table 06C_Bitacoras add Foreign Key (03A_idUsuarios) references 03C_Usuarios (03A_idUsuarios) on delete  restrict on update  restrict;
Alter table 13C_Encabezado add Foreign Key (03A_idUsuarios) references 03C_Usuarios (03A_idUsuarios) on delete  restrict on update  restrict;
Alter table 16C_DetalleCompras add Foreign Key (04A_IdCompras) references 04C_Compras (04A_IdCompras) on delete  restrict on update  restrict;
Alter table 17C_DetallePedidos add Foreign Key (05A_IdPedidos,01A_IdProveedores) references 05C_Pedidos (05A_IdPedidos,01A_IdProveedores) on delete  restrict on update  restrict;
Alter table 06C_Bitacoras add Foreign Key (07A_idAcciones) references 07C_Acciones (07A_idAcciones) on delete  restrict on update  restrict;
Alter table 12C_Pvps add Foreign Key (08A_IdProductos) references 08C_Productos (08A_IdProductos) on delete  restrict on update  restrict;
Alter table 16C_DetalleCompras add Foreign Key (08A_IdProductos) references 08C_Productos (08A_IdProductos) on delete  restrict on update  restrict;
Alter table 17C_DetallePedidos add Foreign Key (08A_IdProductos) references 08C_Productos (08A_IdProductos) on delete  restrict on update  restrict;
Alter table 18C_DetalleFacturas add Foreign Key (08A_IdProductos) references 08C_Productos (08A_IdProductos) on delete  restrict on update  restrict;
Alter table 13C_Encabezado add Foreign Key (09A_IdClientes) references 09C_Clientes (09A_IdClientes) on delete  restrict on update  restrict;
Alter table 08C_Productos add Foreign Key (10A_IdModelos) references 10C_Modelos (10A_IdModelos) on delete  restrict on update  restrict;
Alter table 10C_Modelos add Foreign Key (11A_IdMarcas) references 11C_Marcas (11A_IdMarcas) on delete  restrict on update  restrict;
Alter table 18C_DetalleFacturas add Foreign Key (24A_IdFacturas,23A_IdCotizaciones) references 13C_Encabezado (24A_IdFacturas,23A_IdCotizaciones) on delete  restrict on update  restrict;
Alter table 19C_MovimientoInventarios add Foreign Key (04A_IdCompras) references 16C_DetalleCompras (04A_IdCompras) on delete  restrict on update  restrict;
Alter table 19C_MovimientoInventarios add Foreign Key (08A_IdProductos,24A_IdFacturas,23A_IdCotizaciones) references 18C_DetalleFacturas (08A_IdProductos,24A_IdFacturas,23A_IdCotizaciones) on delete  restrict on update  restrict;
Alter table 20C_Fallas add Foreign Key (08A_IdProductos,24A_IdFacturas,23A_IdCotizaciones) references 18C_DetalleFacturas (08A_IdProductos,24A_IdFacturas,23A_IdCotizaciones) on delete  restrict on update  restrict;
Alter table 22C_Soportes add Foreign Key (20A_IdFallas) references 20C_Fallas (20A_IdFallas) on delete  restrict on update  restrict;
Alter table 20C_Fallas add Foreign Key (21A_IdEdoF) references 21C_EdoFallas (21A_IdEdoF) on delete  restrict on update  restrict;
Alter table 13C_Encabezado add Foreign Key (23A_IdCotizaciones) references 23C_Cotizaciones (23A_IdCotizaciones) on delete  restrict on update  restrict;
Alter table 13C_Encabezado add Foreign Key (24A_IdFacturas) references 24C_Facturas (24A_IdFacturas) on delete  restrict on update  restrict;






