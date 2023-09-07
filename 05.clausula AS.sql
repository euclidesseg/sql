/*la clausula AS nos sirve para dar nombres mas descriptivos 
 a los campos de una tabla cuando estos son algo confusos*/
select * from public.usuarios
select nombre_usuario as nombre, apellido_usuaio as apellido from public.usuarios 

select precio, precio * 2 as precio from productos