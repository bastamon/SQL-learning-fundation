# 法则3-1
> COUNT函数的结果根据参数的不同而不同。COUNT(*)会得到包含NULL的数据行数，而COUNT(<列名>)会得到排除NULL之外的数据行数。

# 法则3-2
> 聚合函数会将NULL排除在外。除了COUNT(*)例外，不会排除NULL.

# 法则3-3
> MAX/MIN函数几乎是用于所有数据类型（）日期的列。SUM/AVG函数只适用于数值类型的列。

# 法则3-4
> 想要计算值种类时，可以在COUNT函数的参数中使用DISTINCT
```
SELECT DISTINCT COUNT(shohin_bunrui) FROM Shohin;/*为8，错误*/
SELECT COUNT(DISTINCT shohin_bunrui) FROM Shohin;/*为3，正确*/
```

# 法则3-5
> 在聚合函数的参数中使用DISTINCT，可以删除重复数据
```
SELECT SUM(hanbai_tanka), SUM(DISTINCT hanbai_tanka) FROM Shohin;
```

# 法则3-7☆☆☆☆
> 查询中用到的关键词主要包含六个，并且他们的顺序不可改变且依次为 
> select--from--where--group by--having--order by 
> from:需要从哪个数据表检索数据 
> where:过滤表中数据的条件 
> group by:如何将上面过滤出的数据分组 
> having:对上面已经分组的数据进行过滤的条件  
> select:查看结果集中的哪个列，或列的计算结果 
> order by :按照什么样的顺序来查看返回的数据

> 执行顺序与sql语句的书写顺序并不是一样的，而是按照下面的顺序来执行 
> from--where--group by--having--select--order by

# 法则3-8
> 聚合键中包含NULL时，在结果中会以“不确定”行（空行）的形式表现出来

# 法则3-9
> 使用GROUP BY子句时，SELECT子句中不能出现聚合将之外的列名。
```
SELECT shohin_mei, shiire_tanka, COUNT(*) FROM Shohin GROUP BY shiire_tanka;/*ERROR col 'shohin_mei' should be in GROUP BY*/
```

# 法则3-10
> 在GROUP BY子句中不能使用SELECT子句中定义的别名
```
SELECT shohin_bunrui AS ab, COUNT(*) FROM Shohin GROUP BY ab;/*GROUP　BY在 SELECT之前执行*/
```

# 法则3-11
> GROUP BY子句结果是无序的


# 法则3-12☆☆☆
> 只有SELECT子句和HAVING子句(以及ORDER BY子句)中（里面）能使用聚合函数
```WHERE COUNT(*)=2/*ERROR 不能再WHERE子句中使用聚合*/```


# 法则3-13☆☆
> HAVING 子句要写在GROUP BY子句之后


# 法则3-14
> 聚合键所对应的条件不应该写在HAVING子句当中，而应该写在WHERE子句当中
> WHERE和HAVING子句的作用不同。HAVING是用来指定“组”条件的。因此，而“行”所对应的条件应该写在WHERE子句中。这样一来，书写出的SELECT语句不但可以分清连着各自的功能，理解起来也更加容易。


# 法则3-15
> ORDER BY子句通常写在SELECT语句末尾

# 法则3-16
> 未指定时ORDER BY排列顺序为升序，ps：DESC


# 法则3-17
> 排序键中有NULL时，会在开头或末尾进行汇总


# 法则3-18
> 在ORDER BY子句中可以使用SELECT子句中定义（AS）的别名


# 法则3-19
> 在ORDER BY子句中可以使用SELECT子句中未使用||已使用的列或聚合函数


# 法则3-20
> 今后不支持在ORDER BY中使用列编号

