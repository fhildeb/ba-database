--Aufgabe 2)
--a)
select lieferant.lnr, lieferant.name, artikel.anr, artikel.bezeichnung
from artikel
join sortiment on (sortiment.anr = artikel.anr)
join lieferant on (lieferant.lnr = sortiment.lnr);

--b)
select artikel.anr, artikel.bezeichnung
from artikel
join bestellposition on (bestellposition.anr = artikel.anr)
join bestellung on (bestellung.bnr = bestellposition.bnr)
where datum < str_to_date('15.11.2011', '%d.%m.%Y');

--c)
select artikel.anr, artikel.bezeichnung, count(*)
from artikel
join bestellposition on (bestellposition.anr = artikel.anr)
join bestellung on (bestellung.bnr = bestellposition.bnr)
where datum >= str_to_date('01.09.2011', '%d.%m.%Y')
group by artikel.anr, artikel.bezeichnung;

--d)
select artikel.anr, artikel.bezeichnung, sum(bestellposition.menge)
from artikel
join bestellposition on (bestellposition.anr = artikel.anr)
join bestellung on (bestellung.bnr = bestellposition.bnr)
where datum >= str_to_date('01.09.2011', '%d.%m.%Y')
group by artikel.anr, artikel.bezeichnung;

--e)
select artikel.anr, artikel.bezeichnung, bestellposition.menge, count(*)
from artikel
join bestellposition on (bestellposition.anr = artikel.anr)
group by  artikel.anr, artikel.bezeichnung,  bestellposition.menge;

--f)
select lieferant.lnr, lieferant.name
from lieferant
join sortiment on (sortiment.lnr = lieferant.lnr)
join artikel on (artikel.anr = sortiment.anr)
where artikel.bezeichnung = 'Olympus VG-130';
group by lieferant.lnr, lieferant.name;
 
--g)
select lieferant.kontonr, lieferant.bank, bestellposition.menge*bestellposition.epreis as summe
from lieferant
join bestellung on (bestellung.lnr = lieferant.lnr)
join bestellposition on (bestellposition.bnr = bestellung.bnr)
where bestellung.datum >= str_to_date('15.11.2011', '%d.%m.%Y')
group by lieferant.kontonr, lieferant.bank;
 
--h)
select artikel.anr, artikel.bezeichnung, bestand.max - bestand.ist as bestellmenge
from artikel
join bestand on (bestand.anr = artikel.anr)
where ist < melde
group by artikel.anr, artikel.bezeichnung;