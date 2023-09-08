---"En SQL, BETWEEN es un operador que se utiliza para filtrar resultados
----que se encuentran dentro de un rango específico de valores."

SELECT * FROM dbo.Products where  Price >= 90 and Price <= 1000

--- el betwen reemplaza la consulta anterior de la siguiente manera 
SELECT * FROM dbo.Products WHERE Price BETWEEN 90 AND 1000;

---- tambien podemos usarlo con el formato de fecha.
select * from dbo.Orders where OrderDate BETWEEN '1996-07-09' AND '1996-07-19'