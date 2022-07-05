-- Aufgabe 1)
--a)
select * from artikel;
select anr, bezeichnung from artikel;

--b)
select * from bestellung order by datum;
select * from bestellung order by datum desc;
 
--c)
select * from lieferant
where bank = 'Sparkasse';

--LIKE falls hinter 'Sparkasse' noch Zusatzinformationen folgen
select * from lieferant
where bank LIKE 'Sparkasse %';

 
--d)
--OR-Verknuepfung um beide Banken anzuzeigen
select * from lieferant
where bank = 'ING-DIBA'
or bank = 'Commerzbank';
 
--e)
select anr, ist from bestand 
where ist > 20;
 
--f)
select anr, ist from bestand 
where ist > (max * 0.5);
 
--g)
--Distinct == keine Duplikate
select distinct anr from bestellposition;
 
--h)
select distinct melde from bestand;
 
--i)
select bezeichnung as 'artikel_name' from artikel;
 
--j)
select anr as ArtikelNr,
       max as MaximalBestand,
       melde as MeldeBestand,
       bestand.ist as GegenwaertigerBestand,
       current_date as Heute
from bestand;