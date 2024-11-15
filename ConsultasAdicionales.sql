/* PRODUCTOS */
select id_producto, nombre_producto, descripcion, nombre_categoria from producto
inner join categoria on producto.id_categoria = categoria.id_categoria;
select * from materia_prima;
/* INGREDIENTES */
select id_ingrediente, nombre_producto, nombre_materia_prima, cantidad from ingrediente 
inner join materia_prima on ingrediente.id_materia_prima = materia_prima.id_materia_prima
inner join producto on ingrediente.id_producto = producto.id_producto;

/* ACTUALIZACIÓN COSTO */
select id_actualizacion_costo, nombre_materia_prima, costo from actualizacion_costo
inner join materia_prima on actualizacion_costo.id_materia_prima = materia_prima.id_materia_prima;

/* LIBRO DIARIO */ 
SELECT fecha, nombre_cuenta, 
	CASE WHEN tipo = 'debe' THEN monto ELSE 0 END AS debe, 
    CASE WHEN tipo = 'haber' THEN monto ELSE 0 END AS haber 
FROM movimiento 
INNER JOIN cuenta ON movimiento.id_cuenta = cuenta.id_cuenta
INNER JOIN asiento_contable ON movimiento.id_asiento_contable = asiento_contable.id_asiento_contable;

/* LIBRO MAYOR */
SELECT fecha, nombre_cuenta, 
    CASE WHEN tipo = 'debe' THEN monto ELSE 0 END AS debe,
    CASE WHEN tipo = 'haber' THEN monto ELSE 0 END AS haber,
    SUM(CASE WHEN tipo = 'debe' THEN monto ELSE -monto END) OVER (PARTITION BY nombre_cuenta ORDER BY fecha, id_movimiento) AS saldo
FROM movimiento 
INNER JOIN cuenta ON movimiento.id_cuenta = cuenta.id_cuenta
INNER JOIN asiento_contable ON movimiento.id_asiento_contable = asiento_contable.id_asiento_contable
ORDER BY nombre_cuenta, fecha, id_movimiento;

/* CREAR ADM */
insert into administrador(apellido, email, nombre, password, telefono) values ("burgoa", "adminburgoa@gmail.com", "bruno", "lepra14", "123456");

select * from materia_prima;
select * from proveedor;