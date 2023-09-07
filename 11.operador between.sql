---"En SQL, BETWEEN es un operador que se utiliza para filtrar resultados
----que se encuentran dentro de un rango específico de valores."

select * from public.productos where  precio >= 90 and precio <= 1000

--- el betwen reemplaza la consulta anterior de la siguiente manera 
SELECT * FROM public.productos WHERE precio BETWEEN 90 AND 1000;
