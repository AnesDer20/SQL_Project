select *
from [dbo].[Sheet1$]


select distinct [processor_name], [processor_brand]
from [dbo].[Sheet1$]
where [processor_brand] like '%intel%'
group by [processor_name], [processor_brand]

--- PC brande -- 
select [brand] , count(*) as Quantité
from [dbo].[Sheet1$]
group by [brand]
having count(*) > 1 
order by Quantité desc

-- processeur brand : ---
select [processor_brand], count (*) as Quantité
from [dbo].[Sheet1$]
group by [processor_brand]
having count(*) >1
order by Quantité desc

-- model : 
select [model] , count(*) as Quantité
from [dbo].[Sheet1$]
group by [model]
order by Quantité desc

-- Les processeurs Intel : 
select distinct [processor_name],count(*) as Quantité
from [dbo].[Sheet1$]
where [processor_brand] like '%intel%'
group by [processor_name]
having count(*) > 1
order by Quantité desc

-- Les processeurs AMD : 
select distinct [processor_name],count(*) as Quantité
from [dbo].[Sheet1$]
where [processor_brand] like '%amd%'
group by [processor_name]
having count(*) > 1
order by Quantité desc

-- Systéme d'exploitation : 
select distinct [os] , count(*) as Quantité
from [dbo].[Sheet1$]
group by [os]
having count(*) > 1
order by Quantité desc

-- avg prix par brand :

select  [brand], round(AVG([latest_price]),2) as Prix_Moyen
from [dbo].[Sheet1$]
group by [brand]
order by Prix_Moyen desc






-- correction des fautes
update [dbo].[Sheet1$]
set os = 'inconue'
where os = 'Missing'
update [dbo].[Sheet1$]
set [processor_name] = 'Core i7'
where [processor_name] like '%Ryzen 7%' 
	and [processor_brand] like '%intel%'
	or [processor_name] = 'i7'

update [dbo].[Sheet1$]
set [processor_name] = 'Core i5'
where [processor_name] = 'i5'

update [dbo].[Sheet1$]
set [processor_name] = 'Ryzen 5'
where [processor_name] = '5'

