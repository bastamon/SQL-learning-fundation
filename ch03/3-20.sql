SELECT shohin_bunrui,count(*) FROM shop.Shohin
group by shohin_bunrui
having count(*)=2;