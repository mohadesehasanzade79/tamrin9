create procedure Prac2
           @P nvarchar(75)
as
SELECT product.price,product.nameFROM customers INNER JOIN orders
on customers.ID=orders.customers_id
INNER JOIN product
on orders.Product_id=product.id
INNER JOIN citis
on customers.City_id=citis.id
WHERE customers.Name=@P

return @P



declare @Re int;
exec @Re= Prac2 'Reza Rezaee';
print @Re;