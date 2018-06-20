/*DML:插入数据*/
BEGIN transaction;
insert into Shohin values('0001','T恤衫','衣服',1000,500,'2009-09-20');
insert into Shohin values('0002','打孔机','办公用品',500,320,'2009-09-11');
insert into Shohin values('0003','运动T恤衫','衣服',4000,2800,null);
insert into Shohin values('0004','菜刀','厨房用具',3000,2800,'2009-09-20');
insert into Shohin values('0005','高压锅','厨房用具','6800','5000','2009-01-15');
insert into Shohin values('0006','叉子','厨房用具',500,null,'2009-09-20');
insert into Shohin values('0007','擦菜板','厨房用具',880,790,'2008-04-28');
insert into Shohin values('0008','圆珠笔','办公用品',100,null,'2009-11-11');
commit;