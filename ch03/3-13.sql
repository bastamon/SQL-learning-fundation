SELECT shohin_bunrui,sum(shiire_tanka),count(*) FROM shop.Shohin
group by shohin_bunrui;