--Aufgabe 1)
--a)
select bnr, count(*) from bestellposition
group by bnr;

--b)
select anr, max(menge), min(menge), avg(menge)
from bestellposition
group by anr;

--c)
select bnr, count(*) from bestellposition
group by bnr
having count(*)>1;

--d
select bnr, sum(menge*epreis)
from bestellposition
group by bnr;

--e)
select bnr, sum(menge*epreis)
from bestellposition
group by bnr
order by sum(menge*epreis) desc;

--f)
select bnr, sum(menge*epreis)
from bestellposition
group by bnr
having sum(menge*epreis)>2000;

--g)
select max(kosten) from(
                        select bnr, sum(menge*epreis) as kosten
                        from bestellposition
                        group by bnr
                    )as Maximalkosten;

--h)
select bnr, kategorie, count(*) from(
    select bnr,
    case
        when epreis <= 50 then 'Billigklasse'
        when epreis > 200 then'Topklasse'
        else 'Mittelklasse'
    end 
    as kategorie,
    from bestellposition
) as Anzahl
group by bnr, kategorie
having count(*) > 1;
