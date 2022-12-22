
-- touts les données
select * 
from [dbo].['Films & Series$']




--Nettoyer les données : 
select * 
from  [dbo].['Films & Series$']
where [type] is null

delete from [dbo].['Films & Series$']
where [type] is null

----
select * 
from  [dbo].['Films & Series$']
where [type] ='William Wyler'
---
delete from [dbo].['Films & Series$']
where [type] ='William Wyler'

--- total Films & Séries 1925-2021:
select  [type], count([type]) as Quantité
from [dbo].['Films & Series$']
group by [type]

-- production par pays :
select country,count([type]) as total 
from [dbo].['Films & Series$']
where country is not null
group by country
order by total desc

--- Films par Ans : 
select  [release_year],[type], count([type]) as Quantité
from [dbo].['Films & Series$']
where [type] ='Movie' and [release_year] is not null
group by [type],[release_year]
order by [release_year] desc


--- Séries par Ans : 
select  [release_year],[type], count([type]) as Quantité
from [dbo].['Films & Series$']
where  [release_year] is not null
group by [type],[release_year]
order by [release_year] desc


-- Films par Pays : 
select  country,count([title]) as Total
from [dbo].['Films & Series$']
where [type] ='Movie' and country is not null
group by country
order by Total desc

--Séries par Pays : 
select country,count([title]) as Total
from [dbo].['Films & Series$']
where [type] ='TV Show' and country is not null
group by country
order by Total desc


-- genre : 
select [listed_in],count([title]) as Total
from [dbo].['Films & Series$']
group by [listed_in]
order by Total desc