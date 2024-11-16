/* PROVEEDORES */
insert into proveedor(nombre_proveedor,contacto) values("Carnes -La Granja-","156903342");
insert into proveedor(nombre_proveedor,contacto) values("Verdulería -De La Esquina-","2614987810");
insert into proveedor(nombre_proveedor,contacto) values("Gaseosas -A todo gas-","156067768");
insert into proveedor(nombre_proveedor,contacto) values("Almacen -A La Vuelta-","4236815");

/* UNIDADES DE MEDIDA */
insert into unidad_de_medida(medida) values("kilogramo");
insert into unidad_de_medida(medida) values("gramos");
insert into unidad_de_medida(medida) values("litro");
insert into unidad_de_medida(medida) values("unidad");

/* CATEGORÍAS */
insert into categoria(nombre_categoria) values("Hamburguesas");
insert into categoria(nombre_categoria) values("Papas");
insert into categoria(nombre_categoria) values("Bebidas"); 
insert into categoria(nombre_categoria) values("Postres");

/* MATERIA PRIMA */ 
insert into materia_prima(nombre_materia_prima,id_unidad_de_medida,id_proveedor,stock_maximo,stock_minimo)
values("Medallon de carne",4,1,40,10);
insert into materia_prima(nombre_materia_prima,id_unidad_de_medida,id_proveedor,stock_maximo,stock_minimo)
values("Tomate",1,2,10,3);
insert into materia_prima(nombre_materia_prima,id_unidad_de_medida,id_proveedor,stock_maximo,stock_minimo)
values("Queso cheddar",2,4,1000,300);
insert into materia_prima(nombre_materia_prima,id_unidad_de_medida,id_proveedor,stock_maximo,stock_minimo)
values("Papa",1,2,15,5);
insert into materia_prima(nombre_materia_prima,id_unidad_de_medida,id_proveedor,stock_maximo,stock_minimo)
values("Lechuga",1,2,12,4);
insert into materia_prima(nombre_materia_prima,id_unidad_de_medida,id_proveedor,stock_maximo,stock_minimo)
values("Pan",4,4,80,40);
insert into materia_prima(nombre_materia_prima,id_unidad_de_medida,id_proveedor,stock_maximo,stock_minimo)
values("Bacon",2,1,2000,500);
insert into materia_prima(nombre_materia_prima,id_unidad_de_medida,id_proveedor,stock_maximo,stock_minimo)
values("Cebolla",1,2,10,3);
insert into materia_prima(nombre_materia_prima,id_unidad_de_medida,id_proveedor,stock_maximo,stock_minimo)
values("Cocacola",4,3,30,10);
insert into materia_prima(nombre_materia_prima,id_unidad_de_medida,id_proveedor,stock_maximo,stock_minimo)
values("Sprite",4,3,30,10);
insert into materia_prima(nombre_materia_prima,id_unidad_de_medida,id_proveedor,stock_maximo,stock_minimo)
values("Fanta",4,3,30,10);
insert into materia_prima(nombre_materia_prima,id_unidad_de_medida,id_proveedor,stock_maximo,stock_minimo)
values("Agua saborizada",4,3,30,10);
insert into materia_prima(nombre_materia_prima,id_unidad_de_medida,id_proveedor,stock_maximo,stock_minimo)
values("Agua con gas",4,3,30,10);
insert into materia_prima(nombre_materia_prima,id_unidad_de_medida,id_proveedor,stock_maximo,stock_minimo)
values("Agua sin gas",4,3,30,10);

/* PRODUCTOS */
insert into producto(nombre_producto, id_categoria, es_elaborado) values("Cocacola", 3, false);
insert into producto(nombre_producto, id_categoria, es_elaborado) values("Sprite", 3, false);
insert into producto(nombre_producto, id_categoria, es_elaborado) values("Fanta", 3, false);
insert into producto(nombre_producto, id_categoria, es_elaborado) values("Agua saborizada", 3, false);
insert into producto(nombre_producto, id_categoria, es_elaborado) values("Agua con gas", 3, false);
insert into producto(nombre_producto, id_categoria, es_elaborado) values("Agua sin gas", 3, false);

/* INGREDIENTES */
insert into ingrediente(id_producto, id_materia_prima, cantidad) values(1,9,1);
insert into ingrediente(id_producto, id_materia_prima, cantidad) values(2,10,1);
insert into ingrediente(id_producto, id_materia_prima, cantidad) values(3,11,1);
insert into ingrediente(id_producto, id_materia_prima, cantidad) values(4,12,1);
insert into ingrediente(id_producto, id_materia_prima, cantidad) values(5,13,1);
insert into ingrediente(id_producto, id_materia_prima, cantidad) values(6,14,1);

/* CUENTAS CONTABLE */
insert into cuenta(nombre_cuenta, tipo_de_cuenta) values("Caja","ACTIVO");
insert into cuenta(nombre_cuenta, tipo_de_cuenta) values("Mercadería","ACTIVO");
insert into cuenta(nombre_cuenta, tipo_de_cuenta) values("Banco","ACTIVO");
insert into cuenta(nombre_cuenta, tipo_de_cuenta) values("Proveedor","PASIVO");
insert into cuenta(nombre_cuenta, tipo_de_cuenta) values("Impuesto","PASIVO");
insert into cuenta(nombre_cuenta, tipo_de_cuenta) values("Préstamo","PASIVO");
insert into cuenta(nombre_cuenta, tipo_de_cuenta) values("Venta","INGRESO");
insert into cuenta(nombre_cuenta, tipo_de_cuenta) values("Costo de venta","GASTO");
insert into cuenta(nombre_cuenta, tipo_de_cuenta) values("Sueldo","GASTO");
insert into cuenta(nombre_cuenta, tipo_de_cuenta) values("Alquiler","GASTO");
insert into cuenta(nombre_cuenta, tipo_de_cuenta) values("Servicio","GASTO");









