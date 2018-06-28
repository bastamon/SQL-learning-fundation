# SQL-learning-fundation

# SQL基础教程

## 一、MySQL的数据类型

主要包括以下五大类：

整数类型:
>取值范围如果加了unsigned，则最大值翻倍，如tinyint unsigned的取值范围为(0~256)。
<table>
    <tr>
        <th width=20%, bgcolor=yellow >MySQL数据类型</th>
        <th width=40%, bgcolor=yellow>存储范围</th>
        <th width=10%, bgcolor=yellow>字节</th>
    </tr>
    <tr>
        <td>tinyint(m)</td>    
        <td>范围(-128~127)</td>
        <td>1</td>
    <tr>
        <td>smallint(m)</td>    
        <td>范围(-32768~32767)</td>
        <td>2</td>
    </tr>
    <tr>
        <td>mediumint(m)</td>    
        <td>范围(-8388608~8388607)</td>
        <td>3</td>
    </tr>
    <tr>
        <td>int(m)</td>    
        <td>范围(-2147483648~2147483647)</td>
        <td>4</td>
    </tr>
    <tr>
        <td>bigint(m)</td>    
        <td>范围(+-9.22*10的18次方)</td>
        <td>8</td>
    </tr>
</table> 




BIT、BOOL、TINY INT、SMALL INT、MEDIUM INT、 INT、 BIG INT

浮点数类型：FLOAT、DOUBLE、DECIMAL

字符串类型：CHAR、VARCHAR、TINY TEXT、TEXT、MEDIUM TEXT、LONGTEXT、TINY BLOB、BLOB、MEDIUM BLOB、LONG BLOB

日期类型：Date、DateTime、TimeStamp、Time、Year

其他数据类型：BINARY、VARBINARY、ENUM、SET、Geometry、Point、MultiPoint、LineString、MultiLineString、Polygon、GeometryCollection等

![封面](https://images-cn.ssl-images-amazon.com/images/I/41bD3M4I5IL.jpg)