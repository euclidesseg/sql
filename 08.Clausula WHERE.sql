--- Clausula WHERE 
--- esta clausula trabaja con condiciones algo asi como un if es decir 
--- if(id == 5){select a}

SELECT * FROM public.productos

SELECT * FROM public.productos WHERE id = 5

select * from public.productos where nombre = 'Producto B'

select * from public.productos where precio < 100

delete from public.productos where id = 7

update public.productos set nombre = 'MackBook' where id = 5