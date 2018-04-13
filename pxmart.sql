-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- 主機: localhost
-- 產生時間： 2017-06-12 01:03:33
-- 伺服器版本: 5.7.17-log
-- PHP 版本： 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `pxmart`
--

-- --------------------------------------------------------

--
-- 資料表結構 `member`
--

CREATE TABLE `member` (
  `CID` int(11) NOT NULL,
  `Cname` varchar(20) NOT NULL,
  `CPassword` varchar(20) NOT NULL,
  `CPassworde` varchar(20) NOT NULL,
  `CPhone` varchar(20) NOT NULL,
  `Caddress` varchar(100) NOT NULL,
  `Cstatus` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `member`
--

INSERT INTO `member` (`CID`, `Cname`, `CPassword`, `CPassworde`, `CPhone`, `Caddress`, `Cstatus`) VALUES
(1, '王大美', '-', '0422447043', '04-22447043', '台中市北屯區昌平路二段12號', '門市-台中北屯二'),
(2, '劉的華', 'qwrfa64asg8re', '-', '04-23224690', '台中市西區博館路166號', '線上'),
(3, '郭每每', '-', '0426872101', '04-26872101', '臺中市大甲區民權路52號', '門市-大甲光明'),
(4, '蔡筱英', '48ageg42xcvs8', '-', '04-24922935', '台中市大里區文化街120號', '線上'),
(5, '吳奇隆', '45qeq1ac1zv', '-', '04-24377215', '台中市北屯區東光路926號', '線上'),
(6, '孫升', '132zxc54qwf45q', '-', '04-26872048', '台中市大甲區育德路6號', '線上'),
(7, '劉施', '-', '0422437285', '04-22437285', '台中市北屯區松竹北路110號', '門市-松竹'),
(8, '巫豪', '-', '0425223369', '04-25223369', '台中市豐原區豐勢路二段290巷3號\r\n', '門市-豐勢');

-- --------------------------------------------------------

--
-- 資料表結構 `生產追蹤追溯`
--

CREATE TABLE `生產追蹤追溯` (
  `PID` int(11) NOT NULL,
  `PID2` varchar(20) NOT NULL,
  `Cname` varchar(20) NOT NULL,
  `Pname` varchar(20) NOT NULL,
  `Equantity` varchar(20) NOT NULL,
  `Wquantity` varchar(30) NOT NULL,
  `OKquantity` varchar(20) NOT NULL,
  `complete` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `生產追蹤追溯`
--

INSERT INTO `生產追蹤追溯` (`PID`, `PID2`, `Cname`, `Pname`, `Equantity`, `Wquantity`, `OKquantity`, `complete`) VALUES
(1, 'A511-20170619', '全聯福利中心', '義美冷凍水餃800g', '200', '100', '100', '50%'),
(2, 'A512-20170619', '全聯福利中心', '毛寶洗衣精1000ml', '150', '30', '120', '80%'),
(3, 'A513-20170620', '全聯福利中心', '龜甲萬香菇素蠔油', '300', '250', '50', '16.7%'),
(4, 'A514-20170620', '全聯福利中心', '樂事歡樂包', '500', '300', '200', '40%'),
(5, 'A515-20170620', '全聯福利中心', '春風五月花衛生紙120抽', '200', '0', '200', '100%'),
(6, 'A516-20170623', '全聯福利中心', '義美冷凍水餃800g', '180', '170', '10', '5.6%');

-- --------------------------------------------------------

--
-- 資料表結構 `產品`
--

CREATE TABLE `產品` (
  `PID` int(11) NOT NULL,
  `Pname` varchar(20) NOT NULL,
  `Pcode` varchar(20) NOT NULL,
  `Pquantity` varchar(20) NOT NULL,
  `Pstock` varchar(20) NOT NULL,
  `Pprice` varchar(30) NOT NULL,
  `Ptime` date NOT NULL,
  `Pstatus` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `產品`
--

INSERT INTO `產品` (`PID`, `Pname`, `Pcode`, `Pquantity`, `Pstock`, `Pprice`, `Ptime`, `Pstatus`) VALUES
(1, '春風五月花衛生紙100抽', '25482589631', '250', '200', '199', '2020-12-31', '100件尚未送達'),
(2, '春風五月花衛生紙120抽', '12756454184', '200', '50', '299', '2020-11-10', '無異狀'),
(3, '義美冷凍水餃800g', '12536720575', '200', '20', '50', '2018-02-10', '10件尚未送達'),
(4, '義美小泡芙(巧克力)', '48050082454', '150', '99', '150', '2017-06-10', '20件尚未送達'),
(5, '生鮮高麗菜', '40557720547', '50', '34', '120', '2017-06-12', '50件尚未送達'),
(6, '冷凍棒棒腿', '52052115444', '25', '20', '199', '2017-06-20', '無異狀'),
(7, '毛寶洗衣精1000ml', '44551364100', '200', '5', '39', '2019-01-04', '無異狀'),
(8, '樂事歡樂包', '45305896321', '150', '55', '50', '2020-01-05', '無異狀'),
(9, '健達出奇蛋(3入裝)', '46875280457', '50', '29', '49', '2019-03-06', '無異狀'),
(10, '龜甲萬香菇素蠔油', '78207888634', '300', '30', '60', '2022-01-06', '150件尚未送達');

-- --------------------------------------------------------

--
-- 資料表結構 `訂單`
--

CREATE TABLE `訂單` (
  `OID` int(11) NOT NULL,
  `OID2` varchar(20) NOT NULL,
  `Oname` varchar(20) NOT NULL,
  `OCname` varchar(20) NOT NULL,
  `Oquantity` varchar(20) NOT NULL,
  `Oprice` varchar(30) NOT NULL,
  `Ocount` varchar(20) NOT NULL,
  `Ototal` varchar(20) NOT NULL,
  `OSname` varchar(20) NOT NULL DEFAULT '',
  `Ostatus` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `訂單`
--

INSERT INTO `訂單` (`OID`, `OID2`, `Oname`, `OCname`, `Oquantity`, `Oprice`, `Ocount`, `Ototal`, `OSname`, `Ostatus`) VALUES
(1, 'A001', '春風五月花衛生紙100抽', '王大美', '1', '199', '10', '189', '松竹', '已取貨付款'),
(2, 'A002', '義美冷凍水餃800g', '劉的華', '1', '50', '-', '50', '忠明', '已取貨付款'),
(3, 'A003', '義美小泡芙(巧克力)', '郭每每', '2', '150', '-', '300', '十甲', '未取貨'),
(4, 'A004', '春風五月花衛生紙120抽', '蔡筱英', '8', '299', '2', '2390', '塗城', '未取貨'),
(5, 'A005', '生鮮高麗菜', '馬大久', '3', '120', '20', '340', '沙鹿鎮南', '已取貨付款'),
(6, 'A006', '冷凍棒棒腿', '吳奇隆', '10', '199', '-', '1990', '台中東光', '未取貨'),
(7, 'A007', '毛寶洗衣精1000ml', '劉施', '20', '39', '-', '780', '松竹', '未取貨'),
(8, 'A008', '樂事歡樂包', '石美', '1', '50', '-', '50', '十甲', '已取貨付款'),
(9, 'A009', '健達出奇蛋(3入裝)', '孫升', '5', '49', '-', '245', '十甲', '已取貨付款'),
(10, 'A010', '龜甲萬香菇素蠔油', '巫豪', '20', '60', '20', '1180', '東勢豐勢', '已取貨付款');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`CID`);

--
-- 資料表索引 `生產追蹤追溯`
--
ALTER TABLE `生產追蹤追溯`
  ADD PRIMARY KEY (`PID`);

--
-- 資料表索引 `產品`
--
ALTER TABLE `產品`
  ADD PRIMARY KEY (`PID`);

--
-- 資料表索引 `訂單`
--
ALTER TABLE `訂單`
  ADD PRIMARY KEY (`OID`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `member`
--
ALTER TABLE `member`
  MODIFY `CID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用資料表 AUTO_INCREMENT `生產追蹤追溯`
--
ALTER TABLE `生產追蹤追溯`
  MODIFY `PID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用資料表 AUTO_INCREMENT `產品`
--
ALTER TABLE `產品`
  MODIFY `PID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- 使用資料表 AUTO_INCREMENT `訂單`
--
ALTER TABLE `訂單`
  MODIFY `OID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
