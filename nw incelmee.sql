select  * from Products
--fiyat� 50 �zeri olan �r�nler
select * from Products where UnitPrice>50

--sat�stan kald�r�lm�s urunler
select * from Products where Discontinued=1

--Sipari� vermem gereken �r�nler
select ProductID,ProductName,SupplierID,UnitsInStock,ReorderLevel from Products where UnitsInStock <=ReorderLevel and Discontinued=0

--Deniz �r�nleri Kategorisindeki �r�nler
select*from products where CategoryID = 8

--Almanyayayap�lan sat��lar
select* from Orders where ShipCountry = 'Germany'
select* from Orders