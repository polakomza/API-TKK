/* PROVEEDORES */
insert into proveedor(nombre_proveedor,contacto) values("Carnes -La Granja-","156903342");
insert into proveedor(nombre_proveedor,contacto) values("Verdulería -De La Esquina-","2614987810");
insert into proveedor(nombre_proveedor,contacto) values("Gaseosas -A todo gas-","156067768");
insert into proveedor(nombre_proveedor,contacto) values("Almacen -A La Vuelta-","4236815");
insert into proveedor(nombre_proveedor,contacto) values("Pastas Pastucci","4283535");
insert into proveedor(nombre_proveedor,contacto) values("Perin","4453289");

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
insert into categoria(nombre_categoria) values ("Pizzas");
insert into categoria(nombre_categoria) values ("Empanadas");

/* MATERIA PRIMA */ 
insert into materia_prima(nombre_materia_prima,id_unidad_de_medida,id_proveedor,stock_maximo,stock_minimo,stock_actual)
values("Medallon de carne",4,1,40,10,35);
insert into materia_prima(nombre_materia_prima,id_unidad_de_medida,id_proveedor,stock_maximo,stock_minimo,stock_actual)
values("Tomate",1,2,10,3,8);
insert into materia_prima(nombre_materia_prima,id_unidad_de_medida,id_proveedor,stock_maximo,stock_minimo,stock_actual)
values("Queso cheddar",2,4,1000,300,700);
insert into materia_prima(nombre_materia_prima,id_unidad_de_medida,id_proveedor,stock_maximo,stock_minimo,stock_actual)
values("Papa",1,2,15,5,10);
insert into materia_prima(nombre_materia_prima,id_unidad_de_medida,id_proveedor,stock_maximo,stock_minimo,stock_actual)
values("Lechuga",1,2,12,4,10);
insert into materia_prima(nombre_materia_prima,id_unidad_de_medida,id_proveedor,stock_maximo,stock_minimo,stock_actual)
values("Pan",4,4,80,40,65);
insert into materia_prima(nombre_materia_prima,id_unidad_de_medida,id_proveedor,stock_maximo,stock_minimo,stock_actual)
values("Bacon",2,1,2000,500,1800);
insert into materia_prima(nombre_materia_prima,id_unidad_de_medida,id_proveedor,stock_maximo,stock_minimo,stock_actual)
values("Huevo",4,4,200,30,190);
insert into materia_prima(nombre_materia_prima,id_unidad_de_medida,id_proveedor,stock_maximo,stock_minimo,stock_actual)
values("Cebolla",1,2,10,3,8);
insert into materia_prima(nombre_materia_prima,id_unidad_de_medida,id_proveedor,stock_maximo,stock_minimo,stock_actual)
values("Cocacola",4,3,30,10,28);
insert into materia_prima(nombre_materia_prima,id_unidad_de_medida,id_proveedor,stock_maximo,stock_minimo,stock_actual)
values("Sprite",4,3,30,10,26);
insert into materia_prima(nombre_materia_prima,id_unidad_de_medida,id_proveedor,stock_maximo,stock_minimo,stock_actual)
values("Fanta",4,3,30,10,27);
insert into materia_prima(nombre_materia_prima,id_unidad_de_medida,id_proveedor,stock_maximo,stock_minimo,stock_actual)
values("Agua saborizada",4,3,30,10,29);
insert into materia_prima(nombre_materia_prima,id_unidad_de_medida,id_proveedor,stock_maximo,stock_minimo,stock_actual)
values("Agua con gas",4,3,30,10,30);
insert into materia_prima(nombre_materia_prima,id_unidad_de_medida,id_proveedor,stock_maximo,stock_minimo,stock_actual)
values("Agua sin gas",4,3,30,10,30);
insert into materia_prima(nombre_materia_prima,id_unidad_de_medida,id_proveedor,stock_maximo,stock_minimo,stock_actual)
values("Masa Pizza",4,5,100,20,60);
insert into materia_prima(nombre_materia_prima,id_unidad_de_medida,id_proveedor,stock_maximo,stock_minimo,stock_actual)
values("Salsa de tomate",4,3,100,20,90);
insert into materia_prima(nombre_materia_prima,id_unidad_de_medida,id_proveedor,stock_maximo,stock_minimo,stock_actual)
values("Queso Mozzarela",1,5,30,10,20);
insert into materia_prima(nombre_materia_prima,id_unidad_de_medida,id_proveedor,stock_maximo,stock_minimo,stock_actual)
values("Empanada de carne",4,5,120,24,40);
insert into materia_prima(nombre_materia_prima,id_unidad_de_medida,id_proveedor,stock_maximo,stock_minimo,stock_actual)
values("Doritos",4,4,30,10,30);
insert into materia_prima(nombre_materia_prima,id_unidad_de_medida,id_proveedor,stock_maximo,stock_minimo,stock_actual)
values("Papas lays",4,4,30,10,30);
insert into materia_prima(nombre_materia_prima,id_unidad_de_medida,id_proveedor,stock_maximo,stock_minimo,stock_actual)
values("Conitos 3D",4,4,30,10,30);
insert into materia_prima(nombre_materia_prima,id_unidad_de_medida,id_proveedor,stock_maximo,stock_minimo,stock_actual)
values("Pote Helado 1kg",4,6,40,10,30);
insert into materia_prima(nombre_materia_prima,id_unidad_de_medida,id_proveedor,stock_maximo,stock_minimo,stock_actual)
values("Pote Helado 1/2kg",4,6,40,10,30);

/* COSTO MATERIA PRIMA */
insert into actualizacion_costo(id_materia_prima,costo, fechayhora) values (1,200,"2024-11-13 19:07:48.000000");
insert into actualizacion_costo(id_materia_prima,costo, fechayhora) values (2,600,"2024-11-13 19:07:49.000000");
insert into actualizacion_costo(id_materia_prima,costo, fechayhora) values (3,0.220,"2024-11-13 19:07:47.000000");
insert into actualizacion_costo(id_materia_prima,costo, fechayhora) values (4,300,"2024-11-13 19:07:47.000000");
insert into actualizacion_costo(id_materia_prima,costo, fechayhora) values (5,400,"2024-11-13 19:07:47.000000");
insert into actualizacion_costo(id_materia_prima,costo, fechayhora) values (6,300,"2024-11-13 19:07:47.000000");
insert into actualizacion_costo(id_materia_prima,costo, fechayhora) values (7,0.100,"2024-11-13 19:07:47.000000");
insert into actualizacion_costo(id_materia_prima,costo, fechayhora) values (8,140,"2024-11-13 19:07:47.000000");
insert into actualizacion_costo(id_materia_prima,costo, fechayhora) values (9,300,"2024-11-13 19:07:47.000000");
insert into actualizacion_costo(id_materia_prima,costo, fechayhora) values (10,1300,"2024-11-13 19:07:47.000000");
insert into actualizacion_costo(id_materia_prima,costo, fechayhora) values (11,1300,"2024-11-13 19:07:47.000000");
insert into actualizacion_costo(id_materia_prima,costo, fechayhora) values (12,1300,"2024-11-13 19:07:47.000000");
insert into actualizacion_costo(id_materia_prima,costo, fechayhora) values (13,800,"2024-11-13 19:07:47.000000");
insert into actualizacion_costo(id_materia_prima,costo, fechayhora) values (14,800,"2024-11-13 19:07:47.000000");
insert into actualizacion_costo(id_materia_prima,costo, fechayhora) values (15,800,"2024-11-13 19:07:47.000000");
insert into actualizacion_costo(id_materia_prima,costo, fechayhora) values (16,700,"2024-11-13 19:07:47.000000");
insert into actualizacion_costo(id_materia_prima,costo, fechayhora) values (17,650,"2024-11-13 19:07:47.000000");
insert into actualizacion_costo(id_materia_prima,costo, fechayhora) values (18,0.260,"2024-11-13 19:07:47.000000");
insert into actualizacion_costo(id_materia_prima,costo, fechayhora) values (19,400,"2024-11-13 19:07:47.000000");
insert into actualizacion_costo(id_materia_prima,costo, fechayhora) values (20,600,"2024-11-13 19:07:47.000000");
insert into actualizacion_costo(id_materia_prima,costo, fechayhora) values (21,600,"2024-11-13 19:07:47.000000");
insert into actualizacion_costo(id_materia_prima,costo, fechayhora) values (22,600,"2024-11-13 19:07:47.000000");
insert into actualizacion_costo(id_materia_prima,costo, fechayhora) values (23,3000,"2024-11-13 19:07:47.000000");
insert into actualizacion_costo(id_materia_prima,costo, fechayhora) values (24,1500,"2024-11-13 19:07:47.000000");

/* PRODUCTOS */
insert into producto(nombre_producto, id_categoria, imagen, descripcion, es_elaborado) values("Cocacola", 3,"https://img.mundopmmi.com/files/base/pmmi/mundo/image/2024/03/Coca_Cola_20_oz.66057a053ce6a.png?auto=format%2Ccompress&fit=max&q=70&w=1200","Coca Cola de 1 Litro", false);
insert into producto(nombre_producto, id_categoria, imagen, descripcion, es_elaborado) values("Sprite", 3,"https://laadictivastore.com/wp-content/uploads/2023/08/00750105530565L.webp","Sprite de 1 Litro", false);
insert into producto(nombre_producto, id_categoria, imagen, descripcion, es_elaborado) values("Fanta", 3,"https://dcdn.mitiendanube.com/stores/001/175/558/products/fanta1-23baaa9f1dfd59198f16897063258846-640-0.jpg","Fanta de 1 Litro", false);
insert into producto(nombre_producto, id_categoria, imagen, descripcion, es_elaborado) values("Agua saborizada", 3,"https://dcdn.mitiendanube.com/stores/001/151/835/products/77908950032881-a7fdb02746a11d40ef16106644028762-480-0.jpg","Agua saborizada de 1 Litro", false);
insert into producto(nombre_producto, id_categoria, imagen, descripcion, es_elaborado) values("Agua con gas", 3,"https://statics.dinoonline.com.ar/imagenes/full_600x600_ma/3040005_f.jpg","Agua con gas de 1 Litro", false);
insert into producto(nombre_producto, id_categoria, imagen, descripcion, es_elaborado) values("Agua sin gas", 3,"https://statics.dinoonline.com.ar/imagenes/full_600x600_ma/3040003_f.jpg","Agua sin gas de 1 Litro", false);
insert into producto(nombre_producto, id_categoria, imagen, descripcion, es_elaborado) values("Doritos", 4,"https://arcordiezb2c.vteximg.com.br/arquivos/ids/178950/Nachos-Sabor-Queso-Doritos-77-Gr-1-16979.jpg?v=638270301735900000","Doritos de 95grs", false);
insert into producto(nombre_producto, id_categoria, imagen, descripcion, es_elaborado) values("Papas lays", 4,"https://arcordiezb2c.vteximg.com.br/arquivos/ids/178958/Papas-Fritas-Clasicas-Lays-134-Gr-1-16971.jpg?v=638270301774200000","Papas fritas Lays de 95grs", false);
insert into producto(nombre_producto, id_categoria, imagen, descripcion, es_elaborado) values("Conitos 3D", 4,"https://cdn11.bigcommerce.com/s-3stx4pub31/images/stencil/1280x1280/products/3218/8060/lays_3ds_megatube_queso_2__51159.1654269467.jpg?c=2","Conitos 3D de 95grs", false);
insert into producto(nombre_producto, id_categoria, imagen, descripcion, es_elaborado) values("Pote Helado 1kg", 4,"https://tolivmarket-production.s3.sa-east-1.amazonaws.com/products/0f9fba29f5349d2bb142ca9d48b30164719d4540feceecae15838564678ac1d7.jpg","Pote de Helado 1kg", false);
insert into producto(nombre_producto, id_categoria, imagen, descripcion, es_elaborado) values("Empanada de carne", 6,"https://tiodue.com.ar/wp-content/uploads/2022/07/Prod_002056_20220713104918-scaled.jpg","Empanada de carne x unidad", false);
insert into producto(nombre_producto, id_categoria, imagen, descripcion, es_elaborado) values("Papas Fritas", 2,"https://okdiario.com/img/2023/04/12/el-truco-definitivo-para-que-las-patatas-fritas-te-queden-mas-crujientes.jpg","Papas fritas grandes", true);
insert into producto(nombre_producto, id_categoria, imagen, descripcion, es_elaborado) values("Hamburguesa Clasica", 1,"https://www.clarin.com/img/2022/05/27/0HXb0UR0v_2000x1500__1.jpg","Hamburguesa clasica", true);
insert into producto(nombre_producto, id_categoria, imagen, descripcion, es_elaborado) values("Pizza Muzzarella", 5,"https://www.clarin.com/img/2022/10/05/utIOlIIyB_2000x1500__1.jpg","Pizza Muzzarella 8 porciones", true);
insert into producto(nombre_producto, id_categoria, imagen, descripcion, es_elaborado) values("Pote Helado 1/2kg", 4,"https://siroppo.com.ar/wp-content/uploads/2022/03/Copia-de-201029Sirop02-1-e1646237405772.jpg","Pote de Helado 1/2kg", true);

/* INGREDIENTES */
insert into ingrediente(id_producto, id_materia_prima, cantidad) values(1,10,1);
insert into ingrediente(id_producto, id_materia_prima, cantidad) values(2,11,1);
insert into ingrediente(id_producto, id_materia_prima, cantidad) values(3,12,1);
insert into ingrediente(id_producto, id_materia_prima, cantidad) values(4,13,1);
insert into ingrediente(id_producto, id_materia_prima, cantidad) values(5,14,1);
insert into ingrediente(id_producto, id_materia_prima, cantidad) values(6,15,1);
insert into ingrediente(id_producto, id_materia_prima, cantidad) values(7,20,1);
insert into ingrediente(id_producto, id_materia_prima, cantidad) values(8,21,1);
insert into ingrediente(id_producto, id_materia_prima, cantidad) values(9,22,1);
insert into ingrediente(id_producto, id_materia_prima, cantidad) values(10,23,1);
insert into ingrediente(id_producto, id_materia_prima, cantidad) values(11,19,1);
insert into ingrediente(id_producto, id_materia_prima, cantidad) values(12,4,1);
insert into ingrediente(id_producto, id_materia_prima, cantidad) values(13,6,1),(13,1,1),(13,2,0.2),(13,3,100),(13,7,100),(13,9,0.02);
insert into ingrediente(id_producto, id_materia_prima, cantidad) values(14,16,1),(14,17,0.5),(14,18,0.4);
insert into ingrediente(id_producto, id_materia_prima, cantidad) values(15,24,1);

select * from materia_prima;
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