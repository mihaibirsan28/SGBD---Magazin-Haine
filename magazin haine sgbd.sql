SET SERVEROUTPUT ON
SET VERIFY OFF
--4 Crearea tabelelor
drop table Clienti;
create table  Clienti 
   (
    id_client NUMBER(10) PRIMARY KEY, 
	nume VARCHAR2(25) NOT NULL ,
	prenume VARCHAR2(25) NOT NULL ,
	email VARCHAR2(50) NOT NULL ,
	telefon VARCHAR2(15) NOT NULL,
    id_adresa NUMBER(10) NOT NULL
   );

drop table Adresa;
create table Adresa
    (
    id_adresa NUMBER(10) PRIMARY KEY,
    tara VARCHAR2(25) NOT NULL ,
    oras VARCHAR2(25) NOT NULL ,
    strada VARCHAR2(25) NOT NULL ,
    numar NUMBER(10) NOT NULL,
    cod_postal VARCHAR2(25) NOT NULL
    );

drop table Comanda;
create table Comanda
    (
     id_comanda NUMBER(10) PRIMARY KEY, 
     id_client NUMBER(10) NOT NULL, 
     pret_total NUMBER(8,2) NOT NULL,
     data_plasare DATE NOT NULL,
     data_primire DATE 
    );

drop table Produs;  
create table Produs 
    (
     id_produs NUMBER(10) PRIMARY KEY, 
     id_categorie NUMBER(10) NOT NULL, 
     nume VARCHAR2(30) NOT NULL ,
     materiale VARCHAR2(25) NOT NULL ,
     pret NUMBER(8,2) NOT NULL
    );

drop table Categorie;
create table Categorie
    (
     id_categorie NUMBER(10) PRIMARY KEY,
     nume VARCHAR2(30) NOT NULL
    );
   
drop table Recenzie; 
create table Recenzie 
    (
     id_client NUMBER(10) NOT NULL, 
     id_produs NUMBER(10) NOT NULL, 
     nota NUMBER(2) NOT NULL,
     data_recenzie DATE NOT NULL
    );

drop table Cos;
create table Cos
    (
     id_cos NUMBER(10) PRIMARY KEY,
     nr_produse NUMBER(3) NOT NULL,
     pret_total NUMBER(10,2) NOT NULL
    );
    
drop table Oferta;
create table Oferta
    (
     id_oferta NUMBER(10) PRIMARY KEY,
     id_distribuitor NUMBER(10) NOT NULL,
     id_produs NUMBER(10) NOT NULL,
     pret_oferta NUMBER(8,2) NOT NULL,
     stoc NUMBER(10) NOT NULL
    );
    
drop table Distribuitor;
create table Distribuitor
    (
     id_distribuitor NUMBER(10) PRIMARY KEY,
     nume VARCHAR2(30) NOT NULL ,
     email VARCHAR2(30) NOT NULL ,
     telefon VARCHAR2(30) NOT NULL ,
     adresa VARCHAR2(30) NOT NULL
    );
    
drop table OferteCos;
create table OferteCos
    (
     id_cos NUMBER(10) NOT NULL,
     id_oferta NUMBER(10) NOT NULL,
     contitate NUMBER(10) NOT NULL
    );

--5 Inserarea in tabele
insert into Clienti (id_client, nume, prenume, email, telefon, id_adresa)
    values(100, 'Popescu', 'Otilia', 'popescuotilia@yahoo.com', '+40733456721', 101);

insert into Clienti (id_client, nume, prenume, email, telefon, id_adresa)
    values(101, 'Marinescu', 'Ion', 'marinescuion@yahoo.com', '+40733259721', 102);

insert into Clienti (id_client, nume, prenume, email, telefon, id_adresa)
    values(102, 'Popescu', 'Vasile', 'popescuvasile@yahoo.com', '+40722698721', 100);

insert into Clienti (id_client, nume, prenume, email, telefon, id_adresa)
    values(103, 'Popa', 'Lucian', 'popalucian@yahoo.com', '+40731156721', 103);

insert into Clienti (id_client, nume, prenume, email, telefon, id_adresa)
    values(104, 'Iliescu', 'Teodor', 'iliescuteodor@yahoo.com', '+40789016721', 105);

insert into Clienti (id_client, nume, prenume, email, telefon, id_adresa)
    values(105, 'Grigore', 'Ludovic', 'grigoreludovic@yahoo.com', '+40718356721', 104);
    
insert into Clienti (id_client, nume, prenume, email, telefon, id_adresa)
    values(106, 'Popescu', 'Delia', 'popescudelia@yahoo.com', '+40718906721', 101);
    
insert into Clienti (id_client, nume, prenume, email, telefon, id_adresa)
    values(107, 'Ionescu', 'Felicia', 'ionescufelicia@yahoo.com', '+4071897721', 102);

select * 
from Clienti;

insert into Adresa(id_adresa, tara, oras, strada, numar, cod_postal)
    values(100, 'Romania', 'Cluj', 'strada Doamnei', 5, '240011');
 
insert into Adresa(id_adresa, tara, oras, strada, numar, cod_postal)
    values(101, 'Germania', 'Berlin', 'strada Kugel', 3, '242351');

insert into Adresa(id_adresa,  tara, oras, strada, numar, cod_postal)
   values(102, 'Romania', 'Bucuresti', 'strada Paris', 2, '241011');

insert into Adresa(id_adresa, tara, oras, strada, numar, cod_postal)
    values(103, 'Romania', 'Sibiu', 'strada Calului', 19, '278011');

insert into Adresa(id_adresa,  tara, oras, strada, numar, cod_postal)
    values(104, 'Germania', 'Frankfurt', 'strada Wagen', 51, '241111');

insert into Adresa(id_adresa, tara, oras, strada, numar, cod_postal)
    values(105, 'Spania', 'Madrid', 'strada Ola', 3, '240431');
 
insert into Adresa(id_adresa, tara, oras, strada, numar, cod_postal)
    values(106, 'Italia', 'Roma', 'strada Bella', 10, '267011');

select *
from Adresa;
     
insert into Comanda(id_comanda, id_client, pret_total, data_plasare, data_primire)
    values(100, 105, '950.99', sysdate - 20.5, sysdate - 15.4 );
    
insert into Comanda(id_comanda, id_client, pret_total, data_plasare, data_primire)
    values(101, 103, '570.00', sysdate - 27.5, sysdate - 18.4 );
    
insert into Comanda(id_comanda, id_client, pret_total, data_plasare, data_primire)
    values(102, 101, '1400.90', sysdate - 21.5, sysdate - 10.4 );
    
insert into Comanda(id_comanda, id_client, pret_total, data_plasare, data_primire)
    values(103, 100, '1000.99', sysdate - 30.5, sysdate - 19.4 );
    
insert into Comanda(id_comanda, id_client, pret_total, data_plasare, data_primire)
    values(104, 101, '2500.39', sysdate - 20.5, NULL );
    
insert into Comanda(id_comanda, id_client, pret_total, data_plasare, data_primire)
    values(105, 102, '350.99', sysdate - 25.5, NULL );
    
insert into Comanda(id_comanda, id_client, pret_total, data_plasare, data_primire)
    values(106, 103, '1980.99', sysdate - 22.5, sysdate - 15.4 );
    
insert into Comanda(id_comanda, id_client, pret_total, data_plasare, data_primire)
    values(107, 105, '1780.99', sysdate - 22.5, sysdate - 15.4 );
    
insert into Comanda(id_comanda, id_client, pret_total, data_plasare, data_primire)
    values(108, 104, '1340.99', sysdate - 22.5, sysdate - 15.4 );
    
insert into Comanda(id_comanda, id_client, pret_total, data_plasare, data_primire)
    values(109, 101, '1240.99', sysdate - 22.5, NULL );
    
insert into Comanda(id_comanda, id_client, pret_total, data_plasare, data_primire)
    values(110, 102, '1890.99', sysdate - 22.5, NULL );
    
select * 
from Comanda;

insert into Categorie(id_categorie, nume)
    values(100, 'Hanorace');
    
insert into Categorie(id_categorie, nume)
    values(101, 'Tricouri');
    
insert into Categorie(id_categorie, nume)
    values(102, 'Pantaloni');
    
insert into Categorie(id_categorie, nume)
    values(103, 'Camasi');
    
insert into Categorie(id_categorie, nume)
    values(104, 'Sepci');
    
insert into Categorie(id_categorie, nume)
    values(105, 'Geci');
    
insert into Categorie(id_categorie, nume)
    values(106, 'Sneakers');
    
select *
from Categorie;

insert into Produs(id_produs, id_categorie, nume, materiale , pret)
    values (100, 101, 'Tricou DSQUARED2 Logo Milano', 'bumbac', '450.00');

insert into Produs(id_produs, id_categorie, nume, materiale , pret)
    values (101, 101, 'Tricou VERSACE Brand Print', 'bumbac', '650.00');
    
insert into Produs(id_produs, id_categorie, nume, materiale , pret)
    values (102, 101, 'Tricou BALENCIAGA Yellow', 'bumbac', '700.00');
    
insert into Produs(id_produs, id_categorie, nume, materiale , pret)
    values (103, 100, 'Hanorac BURBERRY SS20', 'bumbac', '1050.90');
    
insert into Produs(id_produs, id_categorie, nume, materiale , pret)
    values (104, 100, 'Hanorac Barrow Flower Print', 'bumbac', '950.90');
    
insert into Produs(id_produs, id_categorie, nume, materiale , pret)
    values (105, 100, 'Hanorac Heron Preston', 'bumbac', '1250.90');
    
insert into Produs(id_produs, id_categorie, nume, materiale , pret)
    values (106, 102, 'Pantaloni BARROW', 'bumbac', '530.90');
    
insert into Produs(id_produs, id_categorie, nume, materiale , pret)
    values (107, 105, 'Geaca VERSACE Padded', 'bumbac', '4550.90');
    
insert into Produs(id_produs, id_categorie, nume, materiale , pret)
    values (108, 104, 'Sapca DSQUARED2 Born in Canada', 'bumbac', '350.90');
    
insert into Produs(id_produs, id_categorie, nume, materiale , pret)
    values (109, 106, 'Sneakers ALEXANDER MCQUEEN', 'piele, cauciuc', '2350.90');
    
select *
from Produs;

insert into Cos(id_cos, nr_produse, pret_total)
    values(100, 4, '4500.90');
    
insert into Cos(id_cos, nr_produse, pret_total)
    values(101, 1, '750.90');
    
insert into Cos(id_cos, nr_produse, pret_total)
    values(102, 3, '1400.90');
    
insert into Cos(id_cos, nr_produse, pret_total)
    values(103, 7, '6500.90');
    
insert into Cos(id_cos, nr_produse, pret_total)
    values(104, 2, '1300.00');
    
insert into Cos(id_cos, nr_produse, pret_total)
    values(105, 6, '5500.90');
    
insert into Cos(id_cos, nr_produse, pret_total)
    values(106, 4, '2000.90');
    
select *
from Cos;

insert into Recenzie(id_client, id_produs, nota, data_recenzie)
    values(100, 103, 4, sysdate - 19.4);
    
insert into Recenzie(id_client, id_produs, nota, data_recenzie)
    values(101, 101, 5, sysdate - 20.4);
    
insert into Recenzie(id_client, id_produs, nota, data_recenzie)
    values(102, 104, 3, sysdate - 10.4);
    
insert into Recenzie(id_client, id_produs, nota, data_recenzie)
    values(103, 106, 5, sysdate - 15.4);
    
insert into Recenzie(id_client, id_produs, nota, data_recenzie)
    values(104, 102, 4, sysdate - 6.4);
    
insert into Recenzie(id_client, id_produs, nota, data_recenzie)
    values(105, 107, 3, sysdate - 15.4);
    
insert into Recenzie(id_client, id_produs, nota, data_recenzie)
    values(106, 108, 3, sysdate - 10.4);
    
insert into Recenzie(id_client, id_produs, nota, data_recenzie)
    values(103, 104, 5, sysdate - 15.4);
    
insert into Recenzie(id_client, id_produs, nota, data_recenzie)
    values(104, 107, 4, sysdate - 6.4);
    
insert into Recenzie(id_client, id_produs, nota, data_recenzie)
    values(107, 101, 5, sysdate - 15.4);
    
select *
from Recenzie;

insert into Distribuitor(id_distribuitor, nume, email, telefon, adresa)
    values(100,'Capodopera12', 'capodopera12@yahoo.com', '+40722698721', 'Bucuresti, Romania');
    
insert into Distribuitor(id_distribuitor, nume, email, telefon, adresa)
    values(101,'Farfetch', 'farfetch@yahoo.com', '+40722634521', 'Madris, Spania');
    
insert into Distribuitor(id_distribuitor, nume, email, telefon, adresa)
    values(102,'LuisaViaRoma', 'luisaviaroma@yahoo.com', '+40722691231', 'Roma, Italia');
    
insert into Distribuitor(id_distribuitor, nume, email, telefon, adresa)
    values(103,'CatWalk', 'catwalk@yahoo.com', '+40754698721', 'Berlin, Germania');
    
insert into Distribuitor(id_distribuitor, nume, email, telefon, adresa)
    values(104,'Modaverse', 'modaverse@yahoo.com', '+40745788721', 'Constanta, Romania');

insert into Distribuitor(id_distribuitor, nume, email, telefon, adresa)
    values(105,'Nike', 'nike@yahoo.com', '+40745098721', 'Moscova, Rusia');
       
insert into Distribuitor(id_distribuitor, nume, email, telefon, adresa)
    values(106,'Ankl', 'ankl@yahoo.com', '+40761098721', 'Cluj, Romania');
    
select *
from Distribuitor;

insert into Oferta(id_oferta, id_distribuitor, id_produs, pret_oferta, stoc)
    values(100, 101, 103, '950.90', 3);
    
insert into Oferta(id_oferta, id_distribuitor, id_produs, pret_oferta, stoc)
    values(101, 100, 102, '650.90', 4);
    
insert into Oferta(id_oferta, id_distribuitor, id_produs, pret_oferta, stoc)
    values(102, 101, 101, '550.90', 1);
    
insert into Oferta(id_oferta, id_distribuitor, id_produs, pret_oferta, stoc)
    values(103, 102, 105, '950.90', 0);
    
insert into Oferta(id_oferta, id_distribuitor, id_produs, pret_oferta, stoc)
    values(104, 102, 107, '4000.90', 1);
    
insert into Oferta(id_oferta, id_distribuitor, id_produs, pret_oferta, stoc)
    values(105, 103, 108, '250.90', 9);
    
insert into Oferta(id_oferta, id_distribuitor, id_produs, pret_oferta, stoc)
    values(106, 104, 104, '900.90', 7);
    
insert into Oferta(id_oferta, id_distribuitor, id_produs, pret_oferta, stoc)
    values(107, 105, 109, '2000.90', 4);
    
insert into Oferta(id_oferta, id_distribuitor, id_produs, pret_oferta, stoc)
    values(108, 106, 109, '2000.90', 0);
    
select *
from Oferta;

insert into OferteCos(id_cos, id_oferta, contitate)
    values(100, 101, 3);
  
insert into OferteCos(id_cos, id_oferta, contitate)
    values(101, 102, 1);
  
insert into OferteCos(id_cos, id_oferta, contitate)
    values(102, 106, 5);
  
insert into OferteCos(id_cos, id_oferta, contitate)
    values(103, 104, 1);
  
insert into OferteCos(id_cos, id_oferta, contitate)
    values(104, 107, 3);
  
insert into OferteCos(id_cos, id_oferta, contitate)
    values(105, 100, 2);

insert into OferteCos(id_cos, id_oferta, contitate)
    values(106, 105, 4);
  
insert into OferteCos(id_cos, id_oferta, contitate)
    values(102, 104, 1);
  
insert into OferteCos(id_cos, id_oferta, contitate)
    values(101, 107, 2);
  
insert into OferteCos(id_cos, id_oferta, contitate)
    values(105, 105, 7);
    
select * 
from OferteCos;

--6
--Scrieti un subprogram care sa afiseze toate produsele dintr-o categorie aleasa, fiecare produs
--fiind urmat de toate notele primite din recenzii.


create or replace procedure CategoriePret (
    v_categorie Categorie.nume %type
    
) as
    type t_nota is table of Recenzie.nota%type; --tablou imbricat
    v_nota t_nota := t_nota();
    type tablou_indexat is table of Produs %rowtype index by binary_integer; --tablou indexat
    v_produs tablou_indexat;
    v_id_categorie Categorie.id_categorie %type;
    e_no_haine     exception;
    --e_no_nota     exception;
begin
    DBMS_OUTPUT.PUT_LINE('--------Categoria: ' || v_categorie || '--------'); 
    select id_categorie
    into v_id_categorie
    from Categorie
    where lower(nume) = lower(v_categorie);
    
    select *
    bulk collect into v_produs
    from Produs
    where id_categorie = v_id_categorie;
    
    
    
    if v_produs.count != 0 then
        for i in v_produs.first..v_produs.last loop
                    DBMS_OUTPUT.PUT_LINE(v_produs(i).id_produs || ' ' || v_produs(i).nume || ' ' || v_produs(i).pret);   
                    
                    select nota
                    bulk collect into v_nota
                    from Recenzie
                    where id_produs = v_produs(i).id_produs;
                    
                    if v_nota.count != 0 then
                        for j in v_nota.first..v_nota.last loop
                            DBMS_OUTPUT.PUT_LINE('A primit urmatoarele note din recenzii: '  || v_nota(j));
                        end loop;
                    else
                        DBMS_OUTPUT.PUT_LINE('Nu a primit recenzii acest produs.');
                    end if;
        end loop;
    else
        raise e_no_haine;
    end if;
    DBMS_OUTPUT.NEW_LINE;

exception
    when e_no_haine then
        DBMS_OUTPUT.PUT_LINE('Nu exista haine in categoria cautata si in pretul dorit.');
        DBMS_OUTPUT.NEW_LINE;
    when no_data_found then
        DBMS_OUTPUT.PUT_LINE('Nu exista categoria');
        DBMS_OUTPUT.NEW_LINE;
    when others then
        DBMS_OUTPUT.PUT_LINE('Alta eroare.');
        DBMS_OUTPUT.NEW_LINE;
end CategoriePret;
/

begin 
    CategoriePret('Tricouri');
    CategoriePret('Hanorace');
    CategoriePret('Camasi');
    CategoriePret('Bluze');
end;
/

--7
--Scrieti un subprogram care afiseaza cate produse sunt in stoc din ofertele unui distribuitor.


create or replace procedure StocOferte (
    v_distrib Distribuitor.nume %type
) as
    v_nr number := 0;
    v_nr1 number := 0;
    v_id_oferta number;
    v_id_distribuitor1 number;
    v_stoc number;
    v_nume Distribuitor.nume %type;
    v_id_distribuitor Distribuitor.id_distribuitor %type;
    cursor c is
        select  id_oferta, o.id_distribuitor, stoc
        from Oferta o
        join Distribuitor d
        on o.id_distribuitor = d.id_distribuitor;
    e_no_stoc     exception;

begin
    
    select id_distribuitor
    into v_id_distribuitor
    from Distribuitor
    where lower(nume) = lower(v_distrib);
    
    open c;
    loop

        fetch c into v_id_oferta, v_id_distribuitor1, v_stoc;
        exit when c%notfound;

        if v_id_distribuitor1 = v_id_distribuitor then
            v_nr := v_nr + 1;
            v_nr1 := v_nr1 + v_stoc;
            
        end if;
    end loop;
    if v_nr > 0 then
        if v_nr1 > 0 then
            DBMS_OUTPUT.PUT_LINE('Distribuitorul ' || v_distrib || ' are in stoc ' || v_nr || ' produse.');
            DBMS_OUTPUT.NEW_LINE;
        else 
            raise e_no_stoc;
        end if;
    end if;
exception
    when e_no_stoc then
        DBMS_OUTPUT.PUT_LINE('Nu exista oferte de la acest distribuitor.');
        DBMS_OUTPUT.NEW_LINE;
    when no_data_found then
        DBMS_OUTPUT.PUT_LINE('Nu exista distribuitorul.');
        DBMS_OUTPUT.NEW_LINE;
    when others then
        DBMS_OUTPUT.PUT_LINE('Alta eroare.');
        DBMS_OUTPUT.NEW_LINE;
end StocOferte;
/



begin 
    StocOferte('Capodopera12');
    StocOferte('Farfetch');
    StocOferte('Ankl');
    StocOferte('Puma');
end;
/

--8 

--Scrieti o functie care sa calculeze numarul de clieti dintr-o tara aleasa care au dat comenzi.


create or replace function ClientTara
(
    v_tara Adresa.tara %type
) return varchar2 
as

    type t_id_client is table of Clienti.id_client %type; --tabel imbricat
    v_id_client   t_id_client := t_id_client();
    v_nr_comenzi NUMBER;
    V_numar NUMBER :=0;
    e_no_clienti     exception;

begin
   
    select id_client
    bulk collect into v_id_client
    from Clienti
    where id_adresa in (select id_adresa
                        from Adresa
                        where lower(tara) = lower(v_tara) 
                        );

    if v_id_client.count = 0 then
        raise e_no_clienti;
    end if;        
    for i in v_id_client.first..v_id_client.last loop
    
        select count(distinct id_client)
        into v_nr_comenzi
        from Comanda
        where id_client = v_id_client(i);
            
        v_numar := v_numar + v_nr_comenzi;
            
    end loop;

    return 'Din tara ' || v_tara || ' au fost ' || to_char(v_numar) || ' clienti.';

exception
    when e_no_clienti then
        return 'Din tara ' || v_tara  || ' nu au existat momentan clienti.';
        --return 0;
    when others then
        return 'Alta eroare.';
        --return -20005;
    
end ClientTara;
/

select ClientTara('Romania') Clienti_din_Romania from dual;
select ClientTara('Germania') Clienti_din_Germania from dual;
select ClientTara('China') Clienti_din_China from dual;

--9
-- Scrieti o procedura care primeste ca paramentru numele de familie al unui client  si afiseaze
-- numele complet al clietului , tara de provenienta si categoriile produselor carora le-a acordat
-- o recenzie.


create or replace procedure ex9(
    v_nume Clienti.nume %type
) is
    v_client Clienti%rowtype;
    
    type t_produs is table of Produs%rowtype;
    v_produs t_produs;
    
    type t_categorie is table of Categorie.nume %type;
    v_categorie t_categorie;
    
    v_tara Adresa.tara %type;

begin
    
    select *
    into v_client
    from Clienti
    where lower(nume) = lower(v_nume);
    
    select tara
    into v_tara
    from Adresa
    where id_adresa = v_client.id_adresa;
    
    DBMS_OUTPUT.PUT_LINE('Clientul ' || v_client.nume || ' ' || v_client.prenume || ' din ' || v_tara || ' a cumparat:');
    
    select distinct Categorie.nume
    bulk collect into v_categorie
    from Categorie
    join Produs using (id_categorie)
    join Recenzie using (id_produs)
    join Clienti using (id_client)
    where id_client = v_client.id_client
    order by 1;
    
    
    if v_categorie.count = 0 then
        DBMS_OUTPUT.PUT_LINE('Acest client nu a cumparat nimic.');
    else
        for i in v_categorie.first..v_categorie.last loop
            DBMS_OUTPUT.PUT_LINE(v_categorie(i));    
        end loop;
        DBMS_OUTPUT.NEW_LINE();
    end if;
    
    
exception
   
    when no_data_found then
        DBMS_OUTPUT.PUT_LINE('Nu exista niciun client cu acest nume.');
        DBMS_OUTPUT.NEW_LINE();
    when too_many_rows then
        DBMS_OUTPUT.PUT_LINE('Mai multi clieti cu acelasi nume.');
        DBMS_OUTPUT.NEW_LINE();
    when others then
        DBMS_OUTPUT.PUT_LINE('Alta eroare.');
        DBMS_OUTPUT.NEW_LINE();
end ex9;
/

begin
    ex9('Popescu');
    ex9('Popa');
    ex9('Ionela');
    ex9('Grigore');
    ex9('Ionescu');
end;

--ex10  

--un client nu poate sa aibe mai mult de o comanda in curs de livrare la acel moment.

create or replace trigger InCursDeLivrare
    after insert on Comanda
declare
    nr_comenzi number;
begin
    select max(count(id_comanda))
    into nr_comenzi
    from Comanda
    where data_primire is NULL
    group by id_client;
    
    if nr_comenzi > 1 then
        raise_application_error(-20200, 'O comanda de la acest client se afla deja in curs de livrare.');
    end if;
end;
/

insert into Comanda
    values (111, 102, '1300.54', sysdate-3.4, null);


--ex11
--Sa se realizeze operatiile de insert si update pentru un produs doar daca se respecta 
--urmatoarele reguli: 
–---pretul sa nu fie negativ 
–--- materialul sa nu fie polyester


create or replace trigger trigger_produs
before insert or update on Produs
for each row
declare 
    
begin
    
    if inserting then
        if :new.pret < 0.00 then
            raise_application_error(-20005, 'Pretul nu poate sa fie negativ.');
        end if;
        
        if lower(:new.materiale) = lower('polyester') then
            raise_application_error(-20010, 'Nu se pot adauga haine din polyester.');
        end if;
 
        
    elsif updating ('pret') then
        if :new.pret < 0.00 then
            raise_application_error(-20015, 'Pretul nu poate sa fie negativ.');
        end if;
        
    elsif updating ('materiale') then
        if lower(:new.materiale) = lower('polyester') then
            raise_application_error(-20010, 'Nu se pot adauga haine din polyester.');
        end if;
        
    end if;
end;
/
        
--insert into Produs 
--    values(110, 101, 'Tricou Ih Nom Uh Nit Socially Distant', 'bumbac', -99.33);
    
insert into Produs 
    values(111, 100, 'Hanorac IH NOM UH NIT Cagula', 'polyester', 1909.33);
    
update Produs
set pret = -10.90
where id_produs = 100;

update Produs
set materiale = 'polyester'
where id_produs = 100;

insert into Produs 
    values(112, 101, 'Tricou Palm Angels', 'bumbac', -99.33);
    
---ex12
--Creati tabelul activitate_user(nume_baza_date,user_actual,actiuni,nume_obiect,data_realizare)
--Definti un declansator care sa introduca date in tabelul activitate_user dupa ce utilizatorul 
--a folosit o comanda LDD
create table activitate_user
    (
    nume_baza_date VARCHAR2(50),
    user_actual VARCHAR2(30),
    actiuni VARCHAR2(20),
    nume_obiect VARCHAR2(30),
    data_realizare TIMESTAMP(3)
    );
    
create or replace trigger trigger_12
after create or drop or alter on schema
begin
    insert into activitate_user
        values(SYS.DATABASE_NAME, SYS.LOGIN_USER, SYS.SYSEVENT,  SYS.DICTIONARY_OBJ_NAME, SYSTIMESTAMP(3));
end;
/

select *
from activitate_user;

--ex13
--Un pachet care sa contina toate obiectele definite in cadrul proiectului

-- definim specificatia pachetului

create or replace package haine_package
as
    
    
    --ex 6
    procedure CategoriePret (v_categorie Categorie.nume %type);
    
    --ex7
    procedure StocOferte (v_distrib Distribuitor.nume %type);
    
    --ex8
    function ClientTara (v_tara Adresa.tara %type)
    return varchar2;
    
    --ex9
    procedure ex9(v_nume Clienti.nume %type);
    
end haine_package;
/


--definim corpul pachetului
create or replace package body haine_package
as
--ex 6
    procedure CategoriePret (v_categorie Categorie.nume %type) 
    as
        type t_nota is table of Recenzie.nota%type; --tablou imbricat
        v_nota t_nota := t_nota();
        type tablou_indexat is table of Produs %rowtype index by binary_integer; --tablou indexat
        v_produs tablou_indexat;
        v_id_categorie Categorie.id_categorie %type;
        e_no_haine     exception;
        --e_no_nota     exception;
    begin
        DBMS_OUTPUT.PUT_LINE('--------Categoria: ' || v_categorie || '--------'); 
        select id_categorie
        into v_id_categorie
        from Categorie
        where lower(nume) = lower(v_categorie);
        
        select *
        bulk collect into v_produs
        from Produs
        where id_categorie = v_id_categorie;
        
        
        
        if v_produs.count != 0 then
            for i in v_produs.first..v_produs.last loop
                        DBMS_OUTPUT.PUT_LINE(v_produs(i).id_produs || ' ' || v_produs(i).nume || ' ' || v_produs(i).pret);   
                        
                        select nota
                        bulk collect into v_nota
                        from Recenzie
                        where id_produs = v_produs(i).id_produs;
                        
                        if v_nota.count != 0 then
                            for j in v_nota.first..v_nota.last loop
                                DBMS_OUTPUT.PUT_LINE('A primit urmatoarele note din recenzii: '  || v_nota(j));
                            end loop;
                        else
                            DBMS_OUTPUT.PUT_LINE('Nu a primit recenzii acest produs.');
                        end if;
            end loop;
        else
            raise e_no_haine;
        end if;
        DBMS_OUTPUT.NEW_LINE;
    
    exception
        when e_no_haine then
            DBMS_OUTPUT.PUT_LINE('Nu exista haine in categoria cautata si in pretul dorit.');
            DBMS_OUTPUT.NEW_LINE;
        when no_data_found then
            DBMS_OUTPUT.PUT_LINE('Nu exista categoria');
            DBMS_OUTPUT.NEW_LINE;
        when others then
            DBMS_OUTPUT.PUT_LINE('Alta eroare.');
            DBMS_OUTPUT.NEW_LINE;
    end CategoriePret;
    
 
    
    --ex7
    procedure StocOferte ( v_distrib Distribuitor.nume %type) 
    as
        v_nr number := 0;
        v_nr1 number := 0;
        v_id_oferta number;
        v_id_distribuitor1 number;
        v_stoc number;
        v_nume Distribuitor.nume %type;
        v_id_distribuitor Distribuitor.id_distribuitor %type;
        cursor c is
            select  id_oferta, o.id_distribuitor, stoc
            from Oferta o
            join Distribuitor d
            on o.id_distribuitor = d.id_distribuitor;
        e_no_stoc     exception;
    
    begin
        
        select id_distribuitor
        into v_id_distribuitor
        from Distribuitor
        where lower(nume) = lower(v_distrib);
        
        open c;
        loop
    
            fetch c into v_id_oferta, v_id_distribuitor1, v_stoc;
            exit when c%notfound;
    
            if v_id_distribuitor1 = v_id_distribuitor then
                v_nr := v_nr + 1;
                v_nr1 := v_nr1 + v_stoc;
                
            end if;
        end loop;
        if v_nr > 0 then
            if v_nr1 > 0 then
                DBMS_OUTPUT.PUT_LINE('Distribuitorul ' || v_distrib || ' are in stoc ' || v_nr || ' produse.');
                DBMS_OUTPUT.NEW_LINE;
            else 
                raise e_no_stoc;
            end if;
        end if;
    exception
        when e_no_stoc then
            DBMS_OUTPUT.PUT_LINE('Nu exista oferte de la acest distribuitor.');
            DBMS_OUTPUT.NEW_LINE;
        when no_data_found then
            DBMS_OUTPUT.PUT_LINE('Nu exista distribuitorul.');
            DBMS_OUTPUT.NEW_LINE;
        when others then
            DBMS_OUTPUT.PUT_LINE('Alta eroare.');
            DBMS_OUTPUT.NEW_LINE;
    end StocOferte;

    
    --ex8
    function ClientTara(v_tara Adresa.tara %type) 
    return varchar2 
    as
    
        type t_id_client is table of Clienti.id_client %type; --tabel imbricat
        v_id_client   t_id_client := t_id_client();
        v_nr_comenzi NUMBER;
        V_numar NUMBER :=0;
        e_no_clienti     exception;
    
    begin
       
        select id_client
        bulk collect into v_id_client
        from Clienti
        where id_adresa in (select id_adresa
                            from Adresa
                            where lower(tara) = lower(v_tara) 
                            );
    
        if v_id_client.count = 0 then
            raise e_no_clienti;
        end if;        
        for i in v_id_client.first..v_id_client.last loop
        
            select count(distinct id_client)
            into v_nr_comenzi
            from Comanda
            where id_client = v_id_client(i);
                
            v_numar := v_numar + v_nr_comenzi;
                
        end loop;
    
        return 'Din tara ' || v_tara || ' au fost ' || to_char(v_numar) || ' clienti.';
    
    exception
        when e_no_clienti then
            return 'Din tara ' || v_tara  || ' nu au existat momentan clienti.';
            --return 0;
        when others then
            return 'Alta eroare.';
            --return -20005;
        
    end ClientTara;
    
    --ex9
    procedure ex9(v_nume Clienti.nume %type)
    is
        v_client Clienti%rowtype;
        
        type t_produs is table of Produs%rowtype;
        v_produs t_produs;
        
        type t_categorie is table of Categorie.nume %type;
        v_categorie t_categorie;
        
        v_tara Adresa.tara %type;
    
    begin
        
        select *
        into v_client
        from Clienti
        where lower(nume) = lower(v_nume);
        
        select tara
        into v_tara
        from Adresa
        where id_adresa = v_client.id_adresa;
        
        DBMS_OUTPUT.PUT_LINE('Clientul ' || v_client.nume || ' ' || v_client.prenume || ' din ' || v_tara || ' a cumparat:');
        
        select distinct Categorie.nume
        bulk collect into v_categorie
        from Categorie
        join Produs using (id_categorie)
        join Recenzie using (id_produs)
        join Clienti using (id_client)
        where id_client = v_client.id_client
        order by 1;
        
        
        if v_categorie.count = 0 then
            DBMS_OUTPUT.PUT_LINE('Acest client nu a cumparat nimic.');
        else
            for i in v_categorie.first..v_categorie.last loop
                DBMS_OUTPUT.PUT_LINE(v_categorie(i));
                
            end loop;
            DBMS_OUTPUT.NEW_LINE();
        end if;
        
        
    exception
       
        when no_data_found then
            DBMS_OUTPUT.PUT_LINE('Nu exista niciun client cu acest nume.');
            DBMS_OUTPUT.NEW_LINE();
        when too_many_rows then
            DBMS_OUTPUT.PUT_LINE('Mai multi clieti cu acelasi nume.');
            DBMS_OUTPUT.NEW_LINE();
        when others then
            DBMS_OUTPUT.PUT_LINE('Alta eroare.');
            DBMS_OUTPUT.NEW_LINE();
    end ex9;

end haine_package;
/

--verificarea pachetului

--ex6
begin 
    haine_package.CategoriePret('Tricouri');
    haine_package.CategoriePret('Hanorace');
    haine_package.CategoriePret('Camasi');
    haine_package.CategoriePret('Bluzon');
end;
/

--ex7
begin 
    haine_package.StocOferte('Capodopera12');
    haine_package.StocOferte('Farfetch');
    haine_package.StocOferte('Ankl');
    haine_package.StocOferte('Puma');
end;
/

--ex8
select haine_package.ClientTara('Romania') Clienti_din_Romania from dual;
select haine_package.ClientTara('Germania') Clienti_din_Germania from dual;
select haine_package.ClientTara('China') Clienti_din_China from dual;
/

--ex9
begin
    haine_package.ex9('Popescu');
    haine_package.ex9('Popa');
    haine_package.ex9('Ionela');
    haine_package.ex9('Grigore');
    haine_package.ex9('Ionescu');
end;
/

