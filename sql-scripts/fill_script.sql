--Alle Tabellen füllen
insert into artikel (anr, bezeichnung) values(7654, 'Kodak Easy Share Sport 123');
insert into artikel (anr, bezeichnung) values(7867, 'Olympus VG-130');
insert into artikel (anr, bezeichnung) values(9878, 'Canon EOS 600D');
insert into artikel (anr, bezeichnung) values(9779, 'Canon PowerShot SX 220');
insert into artikel (anr, bezeichnung) values(7253, 'Panasonic Lumix DMC-TZ18');
insert into artikel (anr, bezeichnung) values(2713, 'Canon IXUS 220 HS');
insert into artikel (anr, bezeichnung) values(2132, 'Polaroid i1237');
insert into artikel (anr, bezeichnung) values(5646, 'Sony HX9VB');          
 
insert into lieferant (lnr, name, kontonr, bank) values(1245, 'Handel OHG', 19817651, 'Sparkasse');                             
insert into lieferant (lnr, name, kontonr, bank) values(3497, 'Liefer AG', 53425552, 'ING-DIBA');                               
insert into lieferant (lnr, name, kontonr, bank) values(2386, 'Handelskette eG', 85435435, 'Commerzbank');                              
insert into lieferant (lnr, name, kontonr, bank) values(2389, 'Photo-Mann', 35234535, 'Deutsche Bank');                             
insert into lieferant (lnr, name, kontonr, bank) values(3287, 'Apparate AG', 34546567, 'Sparkasse');                                
insert into lieferant (lnr, name, kontonr, bank) values(2137, 'Muster-Photo GmbH', 65463453, 'Sparkasse');                                                          
 
insert into bestand(anr, max, melde,ist) values (7654,240,40,80);						
insert into bestand(anr, max, melde,ist) values (7867,300,60,280);						
insert into bestand(anr, max, melde,ist) values (9878,320,30,10);						
insert into bestand(anr, max, melde,ist) values (9779,245,20,5);						
insert into bestand(anr, max, melde,ist) values (7253,560,50,50);						
insert into bestand(anr, max, melde,ist) values (2713,430,40,45);						
insert into bestand(anr, max, melde,ist) values (2132,300,20,280);						
insert into bestand(anr, max, melde,ist) values (5646,420,40,39);						                     
 
insert into bestellung (bnr, lnr, datum) values(4711, 3287, str_to_date('26.10.2011', '%d.%m.%Y'));                             
insert into bestellung (bnr, lnr, datum) values(4712, 3497, str_to_date('15.11.2011', '%d.%m.%Y'));                             
insert into bestellung (bnr, lnr, datum) values(4713, 1245, str_to_date('18.11.2011', '%d.%m.%Y'));                             
insert into bestellung (bnr, lnr, datum) values(4714, 2386, str_to_date('01.11.2011', '%d.%m.%Y'));
 
--Duplikate von Pos wurden andere Positionen gegeben da
--Primärschlüssel eindeutig vergeben werden muss
 
--Alternativ:
--Neues Attribut als eindeutigen Primärschlüssel definieren
--und den PK bzw. Constraint von pos entfernen
insert into bestellposition(bnr, pos, anr,menge,epreis) values (4711,1,7654,20,61.07);								
insert into bestellposition(bnr, pos, anr,menge,epreis) values (4712,2,7867,40,78.49);								
insert into bestellposition(bnr, pos, anr,menge,epreis) values (4712,3,5646,250,286.95);								
insert into bestellposition(bnr, pos, anr,menge,epreis) values (4713,4,9878,250,629.00);								
insert into bestellposition(bnr, pos, anr,menge,epreis) values (4713,5,9779,200,210.95);								
insert into bestellposition(bnr, pos, anr,menge,epreis) values (4713,6,2713,200,149.89);								
insert into bestellposition(bnr, pos, anr,menge,epreis) values (4714,7,5646,200,284.49);								
insert into bestellposition(bnr, pos, anr,menge,epreis) values (4714,8,7867,40,80.95);												 

insert into sortiment (lnr, anr) values(1245, 9878);                
insert into sortiment (lnr, anr) values(1245, 9779);                
insert into sortiment (lnr, anr) values(1245, 2713);                
insert into sortiment (lnr, anr) values(2386, 5646);                
insert into sortiment (lnr, anr) values(2389, 2132);                
insert into sortiment (lnr, anr) values(3287, 7654);                
insert into sortiment (lnr, anr) values(2386, 7867);                
insert into sortiment (lnr, anr) values(2389, 7654);                
insert into sortiment (lnr, anr) values(3497, 7867);                
insert into sortiment (lnr, anr) values(3497, 5646);   