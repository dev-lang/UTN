-- FIX -- IGNORAR
ALTER TABLE Articulos
ALTER COLUMN Art_descripcion varchar(64);

-- inserts

insert into Articulos (Art_codigo, Art_descripcion, Art_m3) values 
	('052350', 'CPU AMD RYZEN 3 2200G PRO', '10'),
	('052351','CPU AMD RYZEN 3 2200G','5'),
	('052352','CPU AMD RYZEN 5 3400G','15');

insert into stock_d (sto_remito, stod_region, art_codigo, stod_unidades) values 
	('AL64','BUENOS AIRES','052352','64'),
	('AL64','BUENOS AIRES','052352','64');

insert into stock_e (sto_remito, sto_fecha, cli_codigo) values
	('AL64','24/07/2021','646548');
