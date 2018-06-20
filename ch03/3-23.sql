SELECT shohin_bunrui,avg(hanbai_tanka) FROM shop.Shohin
group by shohin_bunrui
having avg(hanbai_tanka)>=2500;