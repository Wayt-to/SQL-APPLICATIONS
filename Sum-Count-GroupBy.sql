--count satýrlarýn listesini deðil sayýsýný getirir
select count(*) from Products where UnitPrice>50
select count(*) from Orders where EmployeeID=1
--sum istenilen kolonun tüm satýrlardaki deðerlerini toplar
select sum(UnitsInStock) from Products
--stoðumda toplam ne kadarlýk ürün var
select sum(UnitsInStock*UnitPrice) from Products

--group by
select* from Categories

select COUNT(*) from Products where CategoryID=1
select COUNT(*) from Products where CategoryID=2
select COUNT(*) from Products where CategoryID=3
--tek tek kategorideki ürün sayýsýný bulmamak için group by kullanýyoruz
select categoryid,count(*) from Products
group by Categoryid