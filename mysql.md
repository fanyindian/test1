# 1.mysql启动

## 1.1cmd启动

1、管理员打开cmd

2、启动MySQL服务

使用以下命令：net start myql

## [net start mysql提示：服务名无效](https://www.cnblogs.com/sophia194910/p/5541842.html)

（win+R打开运行窗口，输入services.msc

在其中查看mysql的服务名，我的是MySQL80）

![image-20211111164121078](C:\Users\fanyin\AppData\Roaming\Typora\typora-user-images\image-20211111164121078.png)

3、进入mysql  bin目录

cd  + bin路径

4、进入mysql数据库

输入以下命令：mysql -hlocalhost -uroot -p

5.输入密码

![image-20211111163944387](C:\Users\fanyin\AppData\Roaming\Typora\typora-user-images\image-20211111163944387.png)



## 1.2 ip连接

1、 ipconfig 查询ip

![image-20211111170620309](C:\Users\fanyin\AppData\Roaming\Typora\typora-user-images\image-20211111170620309.png)

2、赋予用户名为root的所有ip远程连接权限

在mysql命令行下输入一下命令：

mysql> use mysql;

赋予用户名为root的所有ip远程连接权限：

mysql> update user set host='%'where user='root';

更新配置：

mysql> flush privileges;

之后使用navicat等工具就可以远程连接并操作数据库了。

3、ip登录

![image-20211111170903041](C:\Users\fanyin\AppData\Roaming\Typora\typora-user-images\image-20211111170903041.png)



## 3.0改

[mysql](https://www.2cto.com/database/MySQL/)增加列，修改列名、列属性，删除列语句

 

mysql修改表名，列名，列类型，添加表列，删除表列  

 

alter table test rename test1; --修改表名  

 

alter table test add  column name varchar(10); --添加表列  



alter table test drop  column name; --删除表列  

 

alter table test modify address char(10) --修改表列类型  



alter table test change address address  char(40)  ；

alter table test change  column address address1 varchar(30)--修改表列名