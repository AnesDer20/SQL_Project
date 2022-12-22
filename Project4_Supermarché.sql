--Donnée Général: 
select * 
from [dbo].[supermarché]
--- transform : 

--- gross income  to float : 
alter table [dbo].[supermarché]
alter column [gross income] float
GO
--- total to float : 
alter table [dbo].[supermarché]
alter column [Total] float
GO


-- Le total vente par rayon  : 
select [Product line],sum([Quantity])as Qantité,round(sum([Total]),2) as Total
from [dbo].[supermarché]
group by [Product line]
order by Total desc

-- revenu brut par rayon : 
select [Product line],sum([Quantity]) as Qantité ,round(sum([gross income]),2) as  revenu
from [dbo].[supermarché]
group by [Product line]
order by revenu desc

-- méthode de paiement:
select [Payment],count([Payment]) as Quantité
from [dbo].[supermarché]
group by [Payment]
order by Quantité desc

---type de client : 

select [Customer type],count([Customer type]) as Quantité
from [dbo].[supermarché]
group by [Customer type]
order by Quantité desc


--- données Général :
select round(sum([Total]),2) as Total,round(sum([gross income]),2) as  revenu
from [dbo].[supermarché]


