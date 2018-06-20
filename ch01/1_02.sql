/*create database shop;*/
use shop;
create table Shohin
(shohin_id	char(4)	not null,
shohin_mei varchar(100) not null,
shohin_bunrui varchar(32)	not null,
hanbai_tanka	integer	not null,
shiire_tanka	integer,
torokubi	DATE,
primary	key(shohin_id)
)
