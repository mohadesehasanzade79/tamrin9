create procedure Prac3
           @P nvarchar(75)
as
SELECT  orders.date
FROM customers INNER JOIN orders
on customers.ID=orders.customers_id
INNER JOIN product
on orders.Product_id=product.id
INNER JOIN citis
on customers.City_id=citis.id
WHERE citis.name=@P


return @P



declare @Re int;
exec @Re= Prac3 'Yazd';
print @Re;