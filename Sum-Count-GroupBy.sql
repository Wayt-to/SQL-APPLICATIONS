--count sat�rlar�n listesini de�il say�s�n� getirir
select count(*) from Products where UnitPrice>50
select count(*) from Orders where EmployeeID=1
--sum istenilen kolonun t�m sat�rlardaki de�erlerini toplar
select sum(UnitsInStock) from Products
--sto�umda toplam ne kadarl�k �r�n var
select sum(UnitsInStock*UnitPrice) from Products

--group by
select* from Categories

select COUNT(*) from Products where CategoryID=1
select COUNT(*) from Products where CategoryID=2
select COUNT(*) from Products where CategoryID=3
--tek tek kategorideki �r�n say�s�n� bulmamak i�in group by kullan�yoruz
select categoryid,count(*) from Products
group by Categoryid