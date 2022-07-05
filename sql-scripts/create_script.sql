create table lieferant(
    lnr integer,
    name varchar(255) not null,
    kontonr integer,
    bank varchar(255),
    constraint lieferant_pk primary key (lnr)
);

create table artikel(
    anr integer,
    bezeichnung varchar(200) not null,
    constraint artikel_pk primary key (anr)
);

create table sortiment(
    lnr integer,
    anr integer,
    constraint sortiment_lnr foreign key (lnr) references lieferant (lnr),
    constraint sortiment_anr foreign key (anr) references artikel (anr),
    constraint sortiment_pk primary key (lnr, anr)
);

create table bestand(
    anr integer,
    max int,
    melde int,
    ist int,
    constraint artikel_fk foreign key (anr) references artikel (anr),
    constraint bestand_pk primary key (anr)
);

create table bestellung(
    bnr integer,
    lnr integer,
    datum Date,
    constraint bestellung_pk primary key (bnr)
);

create table bestellposition(
    bnr integer,
    pos int,
    anr integer,
    menge int,
    epreis double,
    constraint bestellposition_fk_bnr foreign key (bnr) references bestellung (bnr),
    constraint bestellposition_fk_anr foreign key (anr) references artikel (anr),
    constraint bestellposition_pk primary key (pos)
);

