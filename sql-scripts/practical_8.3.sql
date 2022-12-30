--Aufgabe 3)
--a)
select current_date from dual;

--b)
select distinct date_format(datum, '%Y') from bestellung;

--c)
select date_format(datum, '%W') from bestellung;
select date_format(datum, '%W', 'de_DE') from bestellung;
select date_format(datum, '%W', 'fr_FR') from bestellung;
select date_format(datum, '%W', 'en_EN') from bestellung;

--d)
select lnr from bestellung
where date_format(datum, '%W', 'de_DE') = 'Mittwoch';

--e)
select anr, ist/max*100 as auslastung, 
case
    when ist/max < 0.2 then 'gering'
    when ist/max > 0.7 then 'stark'
    else 'mittel'
end as kategorie
from bestand;

--f)
select bezeichnung, instr(bezeichnung, 'e') from artikel;

--g)
select substr(name, 1.5) from lieferant;

--h
select substr(bezeichnung, 1, instr(bezeichnung, ' ')-1) as hersteller
from artikel;

--i)
select substr(bezeichnung, 1, instr(bezeichnung, ' ')-1) as hersteller, 
substr(bezeichnung, instr(bezeichnung,' ')+1) as produkt

from artikel;

--j)
select count(*) from lieferant;

select count(*) from lieferant
where bank = 'Sparkasse';

--k)
select max(menge*epreis) from bestellposition;

--l)
select count(*) from bestellposition
where epreis*menge > 200;

--m)
select count(*) from artikel
where substr(anr, 1, 1) = '2';

--n)
select anr, bezeichnung from artikel
order by bezeichnung
limit 3;
