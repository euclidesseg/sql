---- Clausula IN y NOT IN 
select * from dbo.products
where SupplierID = 1
or SupplierID = 2
or SupplierID = 3
or SupplierID = 4

--- la siguiente consulta me reemplazaria la consulta anterior
select * from dbo.products
where SupplierID IN(1,2,3,4)


select * from dbo.Products
where ProductName in ('Chang', 'Chais')