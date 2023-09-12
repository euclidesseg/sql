---- Funciones de Agregacion
---- Nos permites agrupar datos resumirlos y trabajar con estadisticas sobre los datos.
---- Optener el valor de una fila anterior una fila siguiente
---- COUNT 
select * from Products
Select count('ProductName') as Numero_Empleados from [dbo].Products

select sum(Price) as Suma_precios from [dbo].Products

---- AVG promedio
---- suma todos los precios y me los divide por el total de valores
select avg(Price) as promedio  from dbo.Products

---- ROUND 
---- Tomara el promedio y lo redondeara, round no es una funcion de agregacion simpelemente es una funcion
---- a round se le deve agregar un segundo argumento que indica el numero de decimales
select round(avg(Price),0) as promedio  from dbo.Products

---- MIN  
---- me obtiene el valor minimo de una columna en una tabla 
select  Min(Price) as min_price from Products where ProductName is not null

---- MAX  
---- me obtiene el valor maximo de una columna en una tabla 
select  max(Price) as min_price from Products where ProductName is not null