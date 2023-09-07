--- El comando "LIKE" en SQL se utiliza para realizar búsquedas de patrones 
--- en datos de texto en una base de datos.

 --- consulta que exista el nombre Suyama igual que =
select * from public.Employees where lastname like 'Suyama'

--- consulta un nombre que comience con cualquier cosa peor que termine con yama
select * from public.Employees where lastname like '%yama' 
select * from public.Employees where lastname like '%yamas'  --- no retornara nada 

--- consulta un nombre que comience con Su y termine con cualquier cosa
select * from public.Employees where lastname like 'Su%' 

--- consulta un nombre que en su contenido tenga la y
select * from public.Employees where lastname like '%y%' 


select * from public.Employees where lastname like '___' 

