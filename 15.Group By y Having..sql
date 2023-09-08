SELECT CategoryID, round (avg(Price),0)as promedio from Products 
where CategoryID is not null
Group By CategoryID
