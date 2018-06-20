SELECT shohin_bunrui,count(*) FROM shop.Shohin
where shohin_bunrui='衣服'/*指定行对应条件*/
group by shohin_bunrui;