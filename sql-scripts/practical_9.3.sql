--Praktikum 9: Aufgabe 3)
--a)
select lieferant.lnr, lieferant.name, count(lieferant.lnr)
from lieferant
join sortiment on (sortiment.lnr = lieferant.lnr)
group by lieferant.lnr, lieferant.name
having count(lieferant.lnr) >= 2;

 
--b)
select artikel.anr, artikel.bezeichnung
from artikel
cross join bestellposition on (bestellposition.anr = artikel.anr)
cross join bestellung on (bestellung.bnr = bestellposition.bnr)
where bestellung.datum < str_to_date('15.11.2011', '%d.%m.%Y');