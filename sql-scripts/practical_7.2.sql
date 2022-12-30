--Aufgabe 2)
--a) Siehe Skript: fill_script

--b)
update lieferant set bank = 'Sparkasse Leipzig'
where bank = 'Sparkasse';
 
--c)
update bestand set ist = ist - 40
where anr = 7654;
 
update bestand set ist = ist-50
where anr = 7867;
 
update bestand set ist = ist-60
where anr = 2132;
 
--d)
update bestand set melde = 0.2 * max;
 
--e)    
update bestellposition set menge = 30
where anr = (select anr from artikel
            where bezeichnung = 'Kodak Easy Share Sport 123') 
and bnr =   (select bnr from bestellung
            where lnr in    (select lnr from lieferant 
                             where name = 'Apparate AG'));
 
--f)
delete from sortiment 
where anr = (
    select anr from artikel
    where bezeichnung = 'Sony HX9VB'
);
 
--g)
--Bestellposition hat Fremdschluessel auf Artikel
--und muss vor ihm geloescht werden
delete from bestellposition
where anr = (select anr from artikel
            where bezeichnung = 'Sony HX9VB');
 
 --Bestand hat Fremdschluessel auf Artikel
--und muss vor ihm geloescht werden
delete from bestand
where anr = (select anr from artikel
            where bezeichnung = 'Sony HX9VB');
            
--Als letztes Artekel selbst loeschen
delete from artikel
where anr = (select anr from artikel
            where bezeichnung = 'Sony HX9VB');