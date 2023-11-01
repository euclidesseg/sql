---- Subconsultas
---- Son consultas anidadas dentro de una consulta principal se utlizan para recuperar datos
---- relacionados de otra tabla o para realizar calculos complejos.
---- Las subconsultas solamente recuperan datos no se pueden agregar updates etc dentro de una subconsultas



select  ProductId,
		Quantity,
		(select productname from products where OrderDetails.productId = productId) as nombre,
		(select price from products where OrderDetails.productId = productId) as precio
from 

--- dice: seleccioname el id y cantidad de productos de la tabla detalle de orden 
--- sbsonsultas: pero tambien seleccionakme el nombre y el precio del producto en donde el 
--- id del producto en detalle de orden sea igual al id del producto en la tala productos

----===================================================================================================
select productId, SUM(quantity) as total_vendido,
	(select price from products where OD.productId = productId) as price,
	(select productName from products where OD.productId = productId) as nombre,
	(SUM(quantity) * (select price from products where productId = OD.productId))as total_recaudado
from orderdetails OD
where (select price from products where OD.productId = productId) > 40
group by productId 
order by total_vendido desc

---dice: seleccioname el id del producto y sumamame las cantidades vendidas pord cada id de producto
--- de la tbla detalles de ordenes
					--- (el group by indica que se van a agrupar y sumar por id de producto
--- subconsulta1 obtenme tambien losprecios de cada producto donde el id del producto en el detalle de la orden
--- sea igual al id del producto en la tabbla producto
--- subconsulta2: ahora que tienes la suma de productos y sumame la sumame la cantidad y multiplicala por el precio del producto donde
--- el id del producto en la tabla detalles de la orden sea igual al id del producto en la tabla productos

--- tambien podemos realizar subconsultas dentro de la clausula from 
--- siempre y cuando las subsonsulta nos devuelva una tabla ejemplo ojo debemos agregarle un alias a la 
--- consulta principal
select * from 
(select productId, SUM(quantity) as total_vendido,
	(select price from products where OD.productId = productId) as price,
	(select productName from products where OD.productId = productId) as nombre,
	(SUM(quantity) * (select price from products where productId = OD.productId))as total_recaudado
from orderdetails OD
where (select price from products where OD.productId = productId) > 40
group by productId 
order by total_vendido desc) as datos__venta


