---- operador or y and
select * from usuarios

select * from usuarios where nombre_usuario = 'Laura' and  edad < 32
select * from usuarios where nombre_usuario = 'Maria' or nombre_usuario = 'Carlos'


select * from public.proveedores
/*en esta consulta nose cumplira para la primera condicion entre los parentecis pero es de id 
 3 por lo tanto si aparecera*/
select * from public.productos where (precio > 1000 and precio < 3000) or id_proveedor = 3

--- clausula NOT
--- supongamos que no quiero mostrar nada del proveedor 1 seria buen caso de uso usar un NOT

select * from public.productos where NOT id_proveedor = 1 limit 3


--- ah tampoco queremos los de id 5 
select * from public.productos where NOT id_proveedor = 1 and not id_proveedor = 5


--- un cliente quiere lo siguientes productos
select * from public.productos where 
not id_proveedor = 2        --- que el proveedor no sea 2
and precio <= 1000         --- que el precio se de mil o menor a mil
order by random()           --- ordenados aleatoriamente
limit 4                     --- y soloquiere elejir de entre 4
