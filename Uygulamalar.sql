--join

select*from Products
select Productid,Productname,Categoryid from Products

select Products.*,Categories.*
from Products join Categories on Products.CategoryID=Categories.CategoryID

select products.ProductID,Products.ProductName,Categories.CategoryName,Products.UnitPrice,Products.UnitsInStock
 from Products join Categories on Products.CategoryID=Categories.CategoryID
 
select p.ProductID,p.ProductName,c.CategoryName,p.UnitPrice,p.UnitsInStock
from Products as p
join Categories as c on p.CategoryID=c.CategoryID
select*from Suppliers
--ürünleri kategori adý ve tedarikçi firma adý ile gösteriniz
select p.ProductID,p.ProductName,c.CategoryName,p.UnitPrice,p.UnitsInStock,s.CompanyName,s.ContactName
from Products as p
join Categories as c on p.CategoryID=c.CategoryID
join Suppliers as s on p.SupplierID=s.SupplierID

--hangi kategoride kaç adet ürünüm var kategori adý ile listele
select c.CategoryName, count(*) as ProductCount
from Products as p
join Categories as c on p.CategoryID=c.CategoryID
group by c.CategoryName

select*from [Order Details]
select*from orders

--hangi üründen toplam ne kadarlýk satmýþýz
select p.ProductName,sum(o.UnitPrice*o.Quantity) as TotalOrderPrice
from Products as p
join [Order Details] as o on p.ProductID=o.ProductID
group by p.ProductName
order by sum(o.UnitPrice*o.Quantity) desc--asc  --asc küçükten büyüðe --desc büyükten küçüðe

--personerllerimizin toplam satýþ sayýlarý

select e.FirstName,e.LastName, COUNT(*) as OrderCount--e.firstname +' '+e.lastname as employee gibi de yapýlabilir
from Orders
join Employees as e on e.EmployeeID=Orders.EmployeeID
group by e.FirstName,e.LastName

--personellerimizin toplam satýþ rakamlarý ve indirimsiz satýþ rakamlarý

select e.firstname +' '+e.lastname as employee ,sum(od.quantity*od.unitprice) as total,sum(od.Quantity*p.unitprice) as PotencialTotal
from [Order Details] as od
join orders as o on o.orderid=od.OrderID
join Employees as e on e.EmployeeID=o.EmployeeID
join Products as p on od.ProductID=p.ProductID
group by e.firstname +' '+e.lastname 