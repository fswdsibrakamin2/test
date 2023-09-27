\c db_name

\l
select datname from pg_database;

\dt

\d table_name

create table barang(
    kode varchar(10) not null,
    name varchar(100),
    harga int not null default 0,
    jumlah int not null default 0,
    waktu_dibuat timestamp not null default current_timestamp
);

alter table barang add column deskripsi text;
alter table barang drop column deskripsi;
alter table barang rename column name to nama;
alter table barang add primary key (kode);

truncate barang;

drop table barang;

insert into barang(kode, nama, harga, jumlah) values ('A001', 'Piring', 5000, 1);
insert into barang(kode, nama, harga, jumlah) values ('A001', 'Piring', 5000, 1), ('A002', 'Garpu', 2000, 10);

select * from barang;
select * from barang where jumlah > 5;

create type kategori_barang as enum ('Padat', 'Cair', 'Gas');
alter table barang add column kategori kategori_barang;

update barang set harga = 10000, jumlah = jumlah + 1 where kode = 'A001';

delete from barang where kode = 'A002';
