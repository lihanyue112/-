DROP DATABASE IF EXISTS mimissm;
CREATE DATABASE mimissm DEFAULT CHARSET utf8;

/*打开DB*/
USE mimissm;
DROP TABLE IF EXISTS `orderdetail`;
DROP TABLE IF EXISTS `xmorder`;
DROP TABLE IF EXISTS `carshop`;
DROP TABLE IF EXISTS `address`;
DROP TABLE IF EXISTS `users`;
drop table if exists product_info;
drop table if exists product_type;
drop table if exists admin;


#################################管理员表
CREATE TABLE admin(
a_id INT AUTO_INCREMENT PRIMARY KEY,
a_name VARCHAR(20),
a_pass VARCHAR(100)
);
INSERT INTO admin(a_id,a_name,a_pass) VALUES(1,'admin','670b14728ad9902aecba32e22fa4f6bd');


##########################商品类型表
CREATE TABLE product_type
(
type_id int auto_increment PRIMARY KEY,
type_name varchar(20)
);

####################添加数据
insert into product_type(type_name) values('电动车'); 
insert into product_type(type_name) values('电动摩托车'); 
insert into product_type(type_name) values('迷你代步车'); 
insert into product_type(type_name) values('程序员'); 


#############################商品表
create table product_info
(
p_id int auto_increment primary key,
p_name varchar(20),
p_content varchar(200), ##############33商品规格/简介
p_price int, ###############价格
p_image varchar(200), #############图片
p_number int, ########数量
type_id int,
p_date date,
FOREIGN KEY(type_id) REFERENCES product_type(type_id)
);
##添加
insert into product_info(p_name,p_content,p_price,p_image,p_number,type_id,p_date) values('赛克黑色电动车','新电瓶 有需要的私聊我 车也在学校里',800,'SykeeBlackC.jpeg',1,1,'2021-12-01');
insert into product_info(p_name,p_content,p_price,p_image,p_number,type_id,p_date) values('捷豹棕色电动车','没换过电池 但是很抗用 不载人东西区5圈、载人4圈',1299,'JaguarBrownC.jpeg',1,1,'2022-01-15');
insert into product_info(p_name,p_content,p_price,p_image,p_number,type_id,p_date) values('安欣白色电动车','9成新 白色 新电池',950,'AnxinBlueC.jpeg',1,1,'2022-02-07');

insert into product_info(p_name,p_content,p_price,p_image,p_number,type_id,p_date) values('AE85黑色电摩','8成新 黑色 金箭48.20电池',1500,'AE85BlackM.jpeg',1,2,'2022-05-04');
insert into product_info(p_name,p_content,p_price,p_image,p_number,type_id,p_date) values('AE87白色电摩','9成新 白色 大踏板电摩',2000,'AE87WhiteM.jpeg',1,2,'2022-03-05');
insert into product_info(p_name,p_content,p_price,p_image,p_number,type_id,p_date) values('爱玛英格兰电摩','新电瓶 彩色 爱玛',1600,'AimaBlueM.jpeg',1,2,'2022-05-06');
insert into product_info(p_name,p_content,p_price,p_image,p_number,type_id,p_date) values('奥征黑色电摩','9成新 黑色 奥征',1750,'AozhengBlackM.jpeg',1,2,'2022-05-08');
insert into product_info(p_name,p_content,p_price,p_image,p_number,type_id,p_date) values('宝临白色电摩','7成新 白色 宝临',1200,'BaolinSilverM.jpeg',1,2,'2022-06-09');
insert into product_info(p_name,p_content,p_price,p_image,p_number,type_id,p_date) values('小鸟黑色电摩','大踏板电车 9成新 原价2500+的电车',1088,'BirdBlackM.jpeg',1,2,'2021-12-18');
insert into product_info(p_name,p_content,p_price,p_image,p_number,type_id,p_date) values('小鸟粉色电摩','帮学姐卖车 9成新',1500,'BirdPinkM.jpeg',1,2,'2022-01-17');

insert into product_info(p_name,p_content,p_price,p_image,p_number,type_id,p_date) values('小鸟白色电动车','850 新电瓶',850,'BirdWhiteC.jpeg',1,1,'2022-06-16');
insert into product_info(p_name,p_content,p_price,p_image,p_number,type_id,p_date) values('王派红色电动车','新电瓶 新充电器',1000,'KingpaiRedC.jpeg',1,1,'2022-05-13');
insert into product_info(p_name,p_content,p_price,p_image,p_number,type_id,p_date) values('新日蓝色电动车','7成新',650,'SunraBlueC.jpeg',1,1,'2022-01-21');
insert into product_info(p_name,p_content,p_price,p_image,p_number,type_id,p_date) values('台铃黑色电动车','大踏板电车 9成新',900,'TailgBlackC.jpeg',1,1,'2022-06-01');

insert into product_info(p_name,p_content,p_price,p_image,p_number,type_id,p_date) values('赛克黑色电摩','大踏板电摩 9成新',1900,'SykeeBlackM.jpeg',1,2,'2021-12-01');
insert into product_info(p_name,p_content,p_price,p_image,p_number,type_id,p_date) values('天翼顺风鸟白色电摩','原价3000的电摩 现价1250元 9成新',1250,'SkybirdWhiteM.jpeg',1,2,'2022-01-11');
insert into product_info(p_name,p_content,p_price,p_image,p_number,type_id,p_date) values('RS9黑色电摩','原价4000来块 变色车灯 时尚酷型',2350,'RS9BlackM.jpeg',1,2,'2022-05-22');

insert into product_info(p_name,p_content,p_price,p_image,p_number,type_id,p_date) values('旋风冲锋','迷你自行车 白色 有车框',300,'CycloneMAGNUM.jpeg',1,3,'2022-01-02');
insert into product_info(p_name,p_content,p_price,p_image,p_number,type_id,p_date) values('飓风音速','迷你电车 粉色 电池可拆卸',300,'HurricaneSonic.jpg',1,3,'2022-01-03');
insert into product_info(p_name,p_content,p_price,p_image,p_number,type_id,p_date) values('李涵玥', '吃苦耐劳 踏实肯学 极具培养潜力', 9000, 'logo1.jpg', 1, 4, NULL);

#创建前台用户表

CREATE TABLE `users` (
                       `uid` int(11) NOT NULL auto_increment,
                       `uname` varchar(50) default NULL,
                       `upass` varbinary(50) default NULL,
                       `ustatus` int(11) default NULL,
                       `ulevel` int(11) default NULL,
                       `score` int(11) default NULL,
                       PRIMARY KEY  (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
#增加用户数据
INSERT INTO `users` VALUES ('1', 'zar', 0x313233343536, '0', '0', '0');
INSERT INTO `users` VALUES ('2', 'zhangsan', 0x313233343536, '1', '0', '0');
#创建地址表

CREATE TABLE `address` (
                         `addressId` int(11) NOT NULL auto_increment,
                         `uid` int(11) default NULL,
                         `cnee` varchar(50) default NULL,
                         `phone` varchar(11) default NULL,
                         `address` varchar(100) default NULL,
                         PRIMARY KEY  (`addressId`),
                         KEY `FK_Reference_1` (`uid`),
                         CONSTRAINT `FK_Reference_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
#增加地址表数据
INSERT INTO `address` VALUES ('1', '1', '张三', '15266676667', '燕山大学西校区六组团');
INSERT INTO `address` VALUES ('2', '1', '李四', '15266678888', '燕山大学西校区十二组团');
INSERT INTO `address` VALUES ('3', '2', '王五', '15290888162', '燕山大学西校区三组团');

#创建购物车表
CREATE TABLE `carshop` (
                         `cid` int(11) NOT NULL auto_increment,
                         `uid` int(11) default NULL,
                         `pid` int(11) default NULL,
                         `numbers` int(11) default NULL,
                         PRIMARY KEY  (`cid`),
                         KEY `FK_Reference_3` (`uid`),
                         KEY `FK_Reference_4` (`pid`),
                         CONSTRAINT `FK_Reference_4` FOREIGN KEY (`pid`) REFERENCES `product_info` (`p_id`),
                         CONSTRAINT `FK_Reference_3` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
#增加购物车数据
insert into carshop (uid,pid,numbers) values (1,1,2);
#创建订单表
CREATE TABLE `xmorder` (
                         `oid` char(32) NOT NULL ,
                         `uid` int(11) default NULL,
                         `addressId` int(11) default NULL,
                         `totalprice` double(10,2) default NULL,
                         `remarks` varchar(200) default NULL,
                         `status` varchar(6) default NULL,
                         `odate` TIMESTAMP  DEFAULT CURRENT_TIMESTAMP ,
                         PRIMARY KEY  (`oid`),
                         KEY `FK_Reference_5` (`uid`),
                         KEY `FK_Reference_6` (`addressId`),
                         CONSTRAINT `FK_Reference_6` FOREIGN KEY (`addressId`) REFERENCES `address` (`addressId`),
                         CONSTRAINT `FK_Reference_5` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8;
#订单表增加数据
insert into xmorder(oid,uid,addressid,totalprice,remarks,status,odate) values('abcd111222333444777888999000wwww',1,1,9996,'尽快送到','待发货',default);
#创建订单明细表

CREATE TABLE `orderdetail` (
                             `odid` int(11) NOT NULL auto_increment,
                             `oid` char(32) default NULL,
                             `pid` int(11) default NULL,
                             `pnumber` int(11) default NULL,
                             `ptotal` double(10,2) default NULL,
                             PRIMARY KEY  (`odid`),
                             KEY `FK_Reference_7` (`oid`),
                             KEY `FK_Reference_8` (`pid`),
                             CONSTRAINT `FK_Reference_8` FOREIGN KEY (`pid`) REFERENCES `product_info` (`p_id`),
                             CONSTRAINT `FK_Reference_9` FOREIGN KEY (`oid`) REFERENCES `xmorder` (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
insert into orderdetail(oid,pid,pnumber,ptotal) values ('abcd111222333444777888999000wwww',1,2,9996);


select * from admin;
select * from users;
select * from product_type;
select * from product_info ;
select * from orderdetail;
select * from xmorder;
select * from carshop;
select * from address;

alter TABLE admin modify a_pass VARCHAR(100);
update admin set a_pass = MD5("000000") where a_id = 1;
