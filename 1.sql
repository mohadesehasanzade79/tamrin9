create procedure Prac1
           @P nvarchar(75)
as
SELECT citis.name, customers.name
FROM customers INNER JOIN orders
on customers.ID=orders.customers_id
INNER JOIN product
on orders.Product_id=product.id
INNER JOIN citis
on customers.City_id=citis.id
WHERE product.name= @P ;

return @P



declare @Re int;
exec @Re= Prac1 'Galaxy S9';
print @Re;