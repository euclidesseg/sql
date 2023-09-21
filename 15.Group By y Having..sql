
---- Group bay se utiliza uno o varios registros segun 1 o varios valores de una columna
---- group by se suele usar con una funcion de agregacion 
---- en este caso sacamos el promedio de precios y los agrupamos por categoria id es decir 
---- sumara todos los productos de una categoria y sacara su promedio
select categoryid, avg(price) as promedio_productos from Products group by categoryid

---- ahora estoy seleccionando el promedio de los productos por su categoria pero esta vez aplico un round
SELECT CategoryID, round (avg(Price))AS promedio from Products --- seleccionamos
where CategoryID is not null --- filtramos
Group By CategoryID  --- todo lo que tenga el mismo id de categoria se agrupara se sumara y dividira
having avg(price) > 21 ---aplicamos filtro con having sobre un grupo 

---- con where no podemos hacer filtrado de grupos
---- asi como usamos where para filtrar grupos 
---- usamos HAVING PARA FILTRAR GRUPOS


---- ahora vamos a seleccionar el registro de ventas
select productID, sum(quantity)AS TOTAL from orderdetails
group by productID --- Todas las cantidades con el mismo id las sumara y las agrupara
having sum(quantity)< 50 ---agrego esto porque digamos que quiero sacar los productos que vendan menos de 50
order by total asc

---- la sigueinte clausula es ideal para hacer filtrado y analisis de los daatos
select productID, sum(quantity)AS TOTAL from orderdetails
group by productID
order by total desc
limit 1  ---- estamos encontrando el producto que mas se vendio