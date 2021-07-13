-- use master;
-- drop database DEPOSITO;

-- PASO 1 -- CREAR DB
CREATE DATABASE DEPOSITO;
-- 

-- PASO 2 -- USAR DB --
use deposito;


-- PASO 3 -- DESDE ACA HASTA EL FINAL -- 
-- stock e

create table stock_e(
	sto_remito varchar(64) primary key,
	sto_fecha datetime,
	cli_codigo numeric(18,0)
)

-- stock d

create table stock_d(
	sto_remito varchar(64),
	stod_region varchar(64),
	art_codigo numeric(18,0),
	stod_unidades numeric(18,0),
	primary key(sto_remito, stod_region)
)

-- Clientes

create table Clientes(
	cli_codigo numeric(18,0) primary key,
	cli_nombre varchar(64),
	cli_cuit numeric(18, 0)
)

-- Articulos

create table Articulos(
	Art_codigo numeric(18,0) primary key,
	Art_descripcion numeric(18,0),
	Art_m3 numeric(18,0)

)

-- pk_fk

-- alterar tabla destino para agregar constraint, no la "source"
-- agrega un foreign key DESTINO_ORIGEN
-- referencia el foreign (destino) al origen (primary key)

-- 1
-- ALTER TABLE DESTINO
-- ADD CONSTRAINT FK_DESTINO_ORIGEN
-- FOREIGN KEY (DESTINO_) REFERENCES ORIGEN(ORIGEN_)

-- 1. STOCK E (PK) -> STOCK D (FK) [STO_REMITO]

ALTER TABLE STOCK_D
ADD CONSTRAINT FK_stock_d_stock_e
FOREIGN KEY (STO_REMITO) REFERENCES STOCK_E(STO_REMITO)

-- 2. CLIENTES (PK) -> STOCK E (FK) [CLI_CODIGO]
-- !
ALTER TABLE STOCK_e
ADD CONSTRAINT FK_STOCK_e_CLIENTES
FOREIGN KEY (CLI_CODIGO) REFERENCES CLIENTES(CLI_CODIGO)

-- 3. ARTICULOS (PK) -> STOCK_D (FK) [ART_CODIGO]

ALTER TABLE STOCK_D
ADD CONSTRAINT FK_STOCK_D_ARTICULOS
FOREIGN KEY (ART_CODIGO) REFERENCES ARTICULOS(ART_CODIGO)

