--Aufgabe 1)
-- a) Skript "create_skript"
-- b)
alter table lieferant 
    add column blz varchar(10);

-- c)
alter table bestand
    drop column max;

--d)
--Nein da Primaerschluessel mit Referenzen:
--Zuerst alle Referenzen, dann Constraint und
--dannach Spalte loeschen und neuen Schluessel definieren#

--e)
--Ja kann man, da nur Foreign Key. Zuerst Constraint loeschen
--dannach Spalte loeschen

--select*
--from information_schema.tables
--where table_schema = 'artikel';

--select*
--from informaiton_schema.TABLE_CONSTRAINTS
--where table_schema = 'artikel'
--    and table_name = 'bestellposition';
    
alter table bestellposition
    drop foreign key bestellposition_fk_anr;

alter table bestellposition
    drop column anr;
    
--f)
alter table sortiment rename to vertreibt;

--g)
alter table bestellposition
    add column descr varchar(100);
    
--h)
alter table lieferant
    modify name varchar(50) not null;

alter table artikel
    modify bezeichnung varchar(50) not null;

--i)
select current_date, now() from dual;
alter table bestellung
    alter datum set default current_date;

--j)
alter table bestand
    add constraint check_melde check (melde >= 0);

alter table bestand
    add constraint check_ist check (ist >= 0);
    
--k)
alter table bestellung
    add erledigt boolean default false;
    
--l)
alter table artikel
    modify bezeichnung varchar(255) not null;
    
alter table lieferant
    modify name varchar(255);
    
--m)Skript "drop_skript"
