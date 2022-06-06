create procedure Prac4
           @P nvarchar(75)
as
SELECT  customers.name,customers.address
FROM customers INNER JOIN orders
on customers.ID=orders.customers_id
INNER JOIN product
on orders.Product_id=product.id
INNER JOIN citis
on customers.City_id=citis.id
WHERE product.price<@P


return @P



declare @Re int;
exec @Re= Prac4 '400';
print @Re;