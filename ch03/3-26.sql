SELECT shohin_bunrui,count(*) FROM shop.Shohin
group by shohin_bunrui
having shohin_bunrui='衣服';/*指定组对应条件*/