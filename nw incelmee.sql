select  * from Products
--fiyatý 50 üzeri olan ürünler
select * from Products where UnitPrice>50

--satýstan kaldýrýlmýs urunler
select * from Products where Discontinued=1

--Sipariþ vermem gereken ürünler
select ProductID,ProductName,SupplierID,UnitsInStock,ReorderLevel from Products where UnitsInStock <=ReorderLevel and Discontinued=0

--Deniz Ürünleri Kategorisindeki Ürünler
select*from products where CategoryID = 8

--Almanyayayapýlan satýþlar
select* from Orders where ShipCountry = 'Germany'
select* from Orders