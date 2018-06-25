select shohin_bunrui,count(*) from Shohin
group by shohin_bunrui
order by count(*);