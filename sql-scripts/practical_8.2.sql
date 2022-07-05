--Aufgabe 2)
--a)
select * from lieferant
where name like '%AG%';
 
--b)
--substring(spalte, anfang, ende)   substr(bezeichnung,1,5)
select anr, bezeichnung,
substring(bezeichnung,1,length('Canon')) as Hersteller ,
substring(bezeichnung,length('Canon')+2, length(bezeichnung)) as Produktname 
from artikel
where bezeichnung like '%Canon%';

--c)
select bezeichnung from artikel
where anr = 2713
or anr = 9779
or anr = 9878;
 
select bezeichnung from artikel
where anr in (2713,9779,9878);
 
--d)
select * from artikel
where bezeichnung like '%HS%'
or bezeichnung like '%HX%';
 
--e)
select * from artikel
where anr like '2%'; --geht nur in mariadb; casted zu string
 
select * from artikel
where convert(anr,char) like '2%';
 
--f)
select anr from bestand
where ist >=max * 0.2
and ist <=max * 0.8;
 
select anr from bestand
where ist between 0.2*max and 0.8*max;
 
--g)
select bnr from bestellung 
where datum between str_to_date('31.10.2011','%d.%m.%Y')
and str_to_date('15.11.2011','%d.%m.%Y');