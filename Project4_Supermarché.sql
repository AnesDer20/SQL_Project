--Donn�e G�n�ral: 
select * 
from [dbo].[supermarch�]
--- transform : 

--- gross income  to float : 
alter table [dbo].[supermarch�]
alter column [gross income] float
GO
--- total to float : 
alter table [dbo].[supermarch�]
alter column [Total] float
GO


-- Le total vente par rayon  : 
select [Product line],sum([Quantity])as Qantit�,round(sum([Total]),2) as Total
from [dbo].[supermarch�]
group by [Product line]
order by Total desc

-- revenu brut par rayon : 
select [Product line],sum([Quantity]) as Qantit� ,round(sum([gross income]),2) as  revenu
from [dbo].[supermarch�]
group by [Product line]
order by revenu desc

-- m�thode de paiement:
select [Payment],count([Payment]) as Quantit�
from [dbo].[supermarch�]
group by [Payment]
order by Quantit� desc

---type de client : 

select [Customer type],count([Customer type]) as Quantit�
from [dbo].[supermarch�]
group by [Customer type]
order by Quantit� desc


--- donn�es G�n�ral :
select round(sum([Total]),2) as Total,round(sum([gross income]),2) as  revenu
from [dbo].[supermarch�]


