-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.7.29-log - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 2018011365 的数据库结构
CREATE DATABASE IF NOT EXISTS `2018011365` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `2018011365`;

-- 导出  表 2018011365.admin 结构
DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `adminID` int(11) NOT NULL AUTO_INCREMENT,
  `adminname` varchar(20) DEFAULT NULL,
  `adminpassword` varchar(150) DEFAULT NULL,
  `adminbalance` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`adminID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

-- 正在导出表  2018011365.admin 的数据：~1 rows (大约)
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
REPLACE INTO `admin` (`adminID`, `adminname`, `adminpassword`, `adminbalance`) VALUES
	(1, 'admin', 'admin', '2.07');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

-- 导出  表 2018011365.buyralation 结构
DROP TABLE IF EXISTS `buyralation`;
CREATE TABLE IF NOT EXISTS `buyralation` (
  `buyrelationid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `goodsid` int(11) DEFAULT NULL,
  `buynum` int(5) DEFAULT NULL,
  `goodratetomerchant` int(5) DEFAULT NULL,
  `state` int(5) DEFAULT NULL,
  `ordertime` datetime DEFAULT NULL,
  `evaluatestate` int(5) DEFAULT '0',
  `merchantevastate` int(5) DEFAULT '0',
  PRIMARY KEY (`buyrelationid`)
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=utf8;

-- 正在导出表  2018011365.buyralation 的数据：~21 rows (大约)
/*!40000 ALTER TABLE `buyralation` DISABLE KEYS */;
REPLACE INTO `buyralation` (`buyrelationid`, `userid`, `goodsid`, `buynum`, `goodratetomerchant`, `state`, `ordertime`, `evaluatestate`, `merchantevastate`) VALUES
	(223, 38, 23, 1, NULL, 2, '2021-05-14 23:23:11', 1, 1),
	(224, 38, 23, 1, NULL, 4, '2021-05-14 23:27:21', 0, 0),
	(225, 39, 23, 1, NULL, 2, '2021-05-14 23:33:02', 1, 0),
	(227, 39, 26, 1, NULL, 2, '2021-05-15 00:20:37', 1, 1),
	(228, 39, 25, 1, NULL, 2, '2021-05-15 00:25:48', 1, 1),
	(229, 39, 23, 1, NULL, 2, '2021-05-15 10:24:34', 1, 0),
	(230, 39, 23, 1, NULL, 2, '2021-05-15 10:47:22', 1, 0),
	(231, 39, 23, 1, NULL, 2, '2021-05-15 11:08:26', 1, 0),
	(232, 39, 26, 1, NULL, 2, '2021-05-15 11:08:26', 0, 0),
	(233, 39, 25, 1, NULL, 2, '2021-05-15 11:08:26', 0, 0),
	(234, 39, 76, 1, NULL, 2, '2021-05-15 14:16:13', 1, 0),
	(238, 38, 29, 1, NULL, 2, '2021-05-16 13:56:11', 0, 0),
	(239, 38, 26, 2, NULL, 2, '2021-05-16 13:56:12', 0, 0),
	(240, 38, 29, 1, NULL, 2, '2021-05-15 16:14:48', 1, 0),
	(241, 39, 27, 1, NULL, 2, '2021-05-15 16:16:18', 1, 0),
	(242, 39, 27, 1, NULL, 4, '2021-05-15 16:17:45', 0, 0),
	(243, 39, 41, 1, NULL, 2, '2021-05-15 16:18:49', 1, 0),
	(244, 38, 41, 2, NULL, 2, '2021-05-15 16:20:09', 1, 0),
	(245, 38, 83, 1, NULL, 2, '2021-05-15 16:23:25', 1, 0),
	(246, 39, 83, 1, NULL, 2, '2021-05-15 16:24:05', 1, 0),
	(247, 39, 83, 1, NULL, 2, '2021-05-15 18:21:39', 0, 0),
	(248, 38, 32, 1, NULL, 2, '2021-05-15 23:19:35', 1, 0),
	(249, 38, 32, 3, NULL, 4, '2021-05-15 23:20:09', 0, 0),
	(250, 38, 30, 1, NULL, 2, '2021-05-16 13:56:12', 0, 0),
	(251, 38, 30, 1, NULL, 2, '2021-05-16 13:56:12', 0, 0),
	(252, 40, 83, 1, NULL, 2, '2021-05-16 15:25:48', 1, 0),
	(253, 40, 83, 1, NULL, 0, NULL, 0, 0);
/*!40000 ALTER TABLE `buyralation` ENABLE KEYS */;

-- 导出  表 2018011365.evaluate 结构
DROP TABLE IF EXISTS `evaluate`;
CREATE TABLE IF NOT EXISTS `evaluate` (
  `evaluateid` int(11) NOT NULL AUTO_INCREMENT,
  `buyrelationid` int(11) DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  `goodrate` varchar(10) DEFAULT NULL,
  `merchantgoodrate` varchar(10) DEFAULT NULL,
  `usergoodrate` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`evaluateid`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

-- 正在导出表  2018011365.evaluate 的数据：~28 rows (大约)
/*!40000 ALTER TABLE `evaluate` DISABLE KEYS */;
REPLACE INTO `evaluate` (`evaluateid`, `buyrelationid`, `content`, `goodrate`, `merchantgoodrate`, `usergoodrate`) VALUES
	(73, 223, '很好用', '100', '80', NULL),
	(74, 223, '还好吧', '80', NULL, NULL),
	(76, 225, '还不错吧', '80', NULL, NULL),
	(77, 227, '炒鸡好吃ฅ۶•ﻌ•♡', '100', NULL, NULL),
	(78, 227, '不戳不戳', '80', NULL, NULL),
	(79, 227, '好吃', '80', '100', NULL),
	(80, 228, '还好吧', '80', '80', NULL),
	(83, 225, '清晰易懂', '100', '100', NULL),
	(84, 229, '清晰易懂1', '100', '100', NULL),
	(85, 230, '清晰易懂2', '100', '40', NULL),
	(86, 234, '质量不错', '100', NULL, NULL),
	(87, 234, '该用户未评价，默认好评', '60', NULL, NULL),
	(88, 234, '该用户未评价，默认好评', '100', NULL, NULL),
	(89, 240, '很舒服', '100', NULL, NULL),
	(90, 240, '该用户未评价，默认好评', '80', '60', NULL),
	(91, 241, '超级棒', '80', NULL, NULL),
	(92, 231, '该用户未评价，默认好评', '100', '80', NULL),
	(93, 241, '该用户未评价，默认好评', '80', '100', NULL),
	(94, 234, '好用', '100', '100', NULL),
	(95, 242, NULL, NULL, NULL, '60'),
	(96, 243, '该用户未评价，默认好评', '80', '100', NULL),
	(97, 244, '炒鸡好次', '100', NULL, NULL),
	(98, 244, '该用户未评价，默认好评', '100', '80', NULL),
	(99, 245, '又好看又好用', '100', NULL, NULL),
	(100, 246, '该用户未评价，默认好评', '80', NULL, NULL),
	(101, 246, '不粗不错', '100', '80', NULL),
	(102, 246, '该用户未评价，默认好评', '80', NULL, NULL),
	(103, 249, NULL, NULL, NULL, '60'),
	(104, 245, '该用户未评价，默认好评', '80', '100', NULL),
	(105, 248, '纯老人，这手机真好用', '100', '100', NULL),
	(106, 252, 'good', '80', '100', NULL),
	(107, 223, NULL, NULL, NULL, '100');
/*!40000 ALTER TABLE `evaluate` ENABLE KEYS */;

-- 导出  表 2018011365.goods 结构
DROP TABLE IF EXISTS `goods`;
CREATE TABLE IF NOT EXISTS `goods` (
  `goodsid` int(11) NOT NULL AUTO_INCREMENT,
  `goodsname` varchar(50) DEFAULT NULL,
  `goodstype` varchar(50) DEFAULT NULL,
  `goodsstock` varchar(50) DEFAULT '0',
  `goodssales` varchar(50) DEFAULT '0',
  `storeid` int(11) DEFAULT NULL,
  `merchantid` int(11) DEFAULT NULL,
  `goodssize` varchar(50) DEFAULT NULL,
  `goodspic1path` varchar(200) DEFAULT NULL,
  `goodspic2path` varchar(200) DEFAULT NULL,
  `goodspic3path` varchar(200) DEFAULT NULL,
  `goodsoriginalprice` int(10) DEFAULT '0',
  `goodsdiscount` varchar(5) DEFAULT '10',
  `goodsexplain` varchar(200) DEFAULT '无说明',
  `goodsallowbargin` varchar(5) DEFAULT '0',
  `goodsstate` varchar(2) DEFAULT '0',
  `goodsoldandnew` varchar(10) DEFAULT NULL,
  `goodsgoodrate` varchar(50) DEFAULT '0',
  PRIMARY KEY (`goodsid`),
  KEY `FK_goods_store` (`storeid`),
  KEY `FK_goods_merchant` (`merchantid`),
  CONSTRAINT `FK_goods_merchant` FOREIGN KEY (`merchantid`) REFERENCES `merchant` (`merchantID`),
  CONSTRAINT `FK_goods_store` FOREIGN KEY (`storeid`) REFERENCES `store` (`storeid`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=gbk;

-- 正在导出表  2018011365.goods 的数据：~55 rows (大约)
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
REPLACE INTO `goods` (`goodsid`, `goodsname`, `goodstype`, `goodsstock`, `goodssales`, `storeid`, `merchantid`, `goodssize`, `goodspic1path`, `goodspic2path`, `goodspic3path`, `goodsoriginalprice`, `goodsdiscount`, `goodsexplain`, `goodsallowbargin`, `goodsstate`, `goodsoldandnew`, `goodsgoodrate`) VALUES
	(23, 'java项目实践', '书籍', '5', '10', 11, 68, '16开', 'D:\\secondhandplatformpics/goods/f0d07ea1-e48a-4e36-afa6-0b9aa3277fad', 'D:\\secondhandplatformpics/goods/ddab3b33-9a78-4594-a652-0e7d270071c6', 'D:\\secondhandplatformpics/goods/8f7a9b06-c0a2-47f0-bfe3-82c1c837ed52', 45, '7', '学习java必备', '否', '1', '八成新', '92'),
	(24, '汇编语言', '书籍', '3', '2', 11, 68, '16开', 'D:\\secondhandplatformpics/goods/6e14691c-d45a-4271-acb2-bf8f30d4b4e0', 'D:\\secondhandplatformpics/goods/6b983869-5fbd-4f21-90b6-fbac59904aad', 'D:\\secondhandplatformpics/goods/00a113a5-682a-4dc5-8849-32b6bb11053c', 48, '6', '让你感受汇编语言的魅力', '否', '2', '七成新', '0'),
	(25, '女孩手办', '生活用品', '2', '14', 12, 69, '16cm', 'D:\\secondhandplatformpics/goods/549c3e7c-5a57-4513-b987-f77e2f0ff990', 'D:\\secondhandplatformpics/goods/38b4b836-f6f8-42d1-a35a-657d6279917e', 'D:\\secondhandplatformpics/goods/9d89cd2c-170c-4fb9-a55d-36ac650428a6', 100, '7', '装扮小屋吧', '否', '1', '七成新', '80'),
	(26, '好丽友派', '零食', '7', '9', 12, 69, '8枚装', 'D:\\secondhandplatformpics/goods/0101cace-fc1f-4234-8aab-96db0b3ce300', 'D:\\secondhandplatformpics/goods/ecb1a6d5-31fc-4178-8e28-58c04ea5b2b4', 'D:\\secondhandplatformpics/goods/6df44cde-1ecb-4c59-8bfd-7312454969f6', 15, '7', '超好吃', '否', '1', '全新', '86'),
	(27, '闹钟', '电子产品', '1', '1', 11, 68, '20cm', 'D:\\secondhandplatformpics/goods/fe58248f-e8b8-40e4-996b-8f6ed00b5b53', 'D:\\secondhandplatformpics/goods/255a68a6-f715-4361-8a48-b66d3111b1b2', 'D:\\secondhandplatformpics/goods/d547ca05-1aed-4f35-9f50-a3222be0af57', 15, '5', '早睡早起身体好哦', '否', '2', '六成新', '80'),
	(28, 'kindle', '电子产品', '2', '0', 11, 68, '10.5寸', 'D:\\secondhandplatformpics/goods/d4884352-d7f6-40fc-94df-ec659aaf9ab7', 'D:\\secondhandplatformpics/goods/fecc1181-049d-427a-bcef-a367466fa1ec', 'D:\\secondhandplatformpics/goods/93d228d1-6c29-43ce-af23-a9ada75f450f', 800, '7', '轻拿轻放', '否', '1', '八成新', '0'),
	(29, '按摩器', '电子产品', '1', '2', 11, 68, '20cm*18cm', 'D:\\secondhandplatformpics/goods/8fcecf61-2c60-4d82-a8d3-8a1e590be50c', 'D:\\secondhandplatformpics/goods/47341296-78a4-497b-a699-3f95c78e306e', 'D:\\secondhandplatformpics/goods/4532082b-bbb8-42db-9fb2-72433b23fc83', 280, '8', '放松下~', '否', '2', '八成新', '90'),
	(30, '降噪耳机', '电子产品', '2', '2', 11, 68, '25cm*25cm', 'D:\\secondhandplatformpics/goods/3438ba14-8bda-4099-96d1-52af050357e6', 'D:\\secondhandplatformpics/goods/b707ec86-01d6-440c-97ad-2aed60937e87', 'D:\\secondhandplatformpics/goods/c6fd6e0b-d386-49c3-b36a-d4a71a7e33f3', 80, '7', '享受音乐', '否', '2', '九成新', '0'),
	(31, '蓝牙音箱', '电子产品', '5', '0', 11, 68, '25cm*10cm', 'D:\\secondhandplatformpics/goods/67889a67-6053-4c20-a7bd-dc0ce6015fe2', 'D:\\secondhandplatformpics/goods/3b8f7531-e7eb-4f60-90e0-70c8c150e30b', 'D:\\secondhandplatformpics/goods/4cbc7c69-2e1a-41ee-b86d-9dc615e49b75', 110, '6', '外放音乐吧', '否', '1', '九成新', '0'),
	(32, '老人手机', '电子产品', '3', '1', 11, 68, '10cm*5cm', 'D:\\secondhandplatformpics/goods/d8380261-affe-4386-8fcd-f42bfe048cb6', 'D:\\secondhandplatformpics/goods/42c07491-8a4f-4765-b1db-c98741f7a539', 'D:\\secondhandplatformpics/goods/c1e74ece-9910-4983-9342-7dd08d9f6ad0', 150, '5', '送给老人的手机', '否', '1', '九成新', '50'),
	(33, '录音笔', '电子产品', '4', '0', 11, 68, '15cm', 'D:\\secondhandplatformpics/goods/54a0104c-f2fb-4c87-818a-0cf6719a2091', 'D:\\secondhandplatformpics/goods/79a40310-fca5-4876-a139-a93f57741169', 'D:\\secondhandplatformpics/goods/bb909ed3-557d-41cf-8fca-f62844349486', 200, '7', '方便录音时使用', '否', '1', '九成新', '0'),
	(34, '猫王收音机', '电子产品', '7', '0', 12, 69, '20cm*18cm', 'D:\\secondhandplatformpics/goods/d8448e92-f360-4ac6-9c79-73228bb97217', 'D:\\secondhandplatformpics/goods/c58ecefe-711d-4d3f-809d-12d0d210ce1b', 'D:\\secondhandplatformpics/goods/5264ffc7-7ca1-41aa-a5e4-5757138967d8', 500, '6', '接收频率，享受律动', '否', '1', '九成新', '0'),
	(35, '台灯', '电子产品', '3', '0', 12, 69, '30cm', 'D:\\secondhandplatformpics/goods/d3b462d6-b7d0-4463-b588-2fcad2a06e8b', 'D:\\secondhandplatformpics/goods/78e369b6-df27-432e-9720-d75772c0c3f4', 'D:\\secondhandplatformpics/goods/4b0bc193-1091-490e-8374-f4adab59cd19', 100, '7', '更护眼的台灯', '否', '1', '八成新', '0'),
	(36, '相机稳定器', '电子产品', '4', '0', 12, 69, '50cm高', 'D:\\secondhandplatformpics/goods/e4f808e5-7019-496d-89c3-9bfb1d3122c0', 'D:\\secondhandplatformpics/goods/fce95aac-cba0-4190-bd03-0506bdd08bec', 'D:\\secondhandplatformpics/goods/8494ec3b-2383-4150-ac13-80bde78e2894', 90, '7', '拍摄时更稳定', '否', '1', '七成新', '0'),
	(37, '小米运动手表', '电子产品', '3', '0', 12, 69, '10cm*10cm', 'D:\\secondhandplatformpics/goods/b58d4117-fd16-4f0f-90fd-940541555e11', 'D:\\secondhandplatformpics/goods/ede70f05-ce0f-40c3-9e15-bc4d09e94464', 'D:\\secondhandplatformpics/goods/4511ee3c-c928-432d-9534-c8a350633e56', 300, '8', '运动起来！', '否', '1', '九成新', '0'),
	(38, '学生平板', '电子产品', '3', '0', 12, 69, '12寸', 'D:\\secondhandplatformpics/goods/b51809c9-3ac4-4c2e-a8fd-40507616c41c', 'D:\\secondhandplatformpics/goods/c458bd2e-f875-4acb-bffd-2afea78adebb', 'D:\\secondhandplatformpics/goods/6fda4c56-5a4f-436f-a4cb-26464cba8081', 1000, '6', '辅助学习，让学习更有效', '否', '1', '七成新', '0'),
	(39, '运动手表', '电子产品', '3', '0', 12, 69, '10cm*10cm', 'D:\\secondhandplatformpics/goods/9e72112b-64b0-4a81-8607-27d55293f60c', 'D:\\secondhandplatformpics/goods/3f712119-38ab-42e7-909b-1c362034507a', 'D:\\secondhandplatformpics/goods/8cdd3468-e725-45d2-b3cd-d44122b29234', 200, '8', '记得运动哦', '否', '1', '九成新', '0'),
	(40, '照相机', '电子产品', '3', '0', 12, 69, '15cm*7cm', 'D:\\secondhandplatformpics/goods/4fca061f-92ea-4671-94d1-4afbf1044233', 'D:\\secondhandplatformpics/goods/8da05c6f-b46b-4144-8f1d-7f2dcfb9459d', 'D:\\secondhandplatformpics/goods/a49170fa-ed96-4b97-830a-0e775238b8a7', 1200, '8', '留住美好瞬间', '否', '1', '八成新', '0'),
	(41, '蛋黄酥', '零食', '1', '3', 12, 69, '6枚装', 'D:\\secondhandplatformpics/goods/b7601539-083c-4c3a-8b3b-601352f53fcb', 'D:\\secondhandplatformpics/goods/d99f652c-a51f-44e1-ad42-d40d81febf44', 'D:\\secondhandplatformpics/goods/e5873b64-c68c-4427-80f7-bad34acc8142', 20, '8', '美味蛋黄酥~', '否', '1', '全新', '93'),
	(42, '红牛', '零食', '20', '0', 12, 69, '250ml', 'D:\\secondhandplatformpics/goods/0ba1018c-aeca-4173-ab60-fd217d2176fb', 'D:\\secondhandplatformpics/goods/1b193d76-595d-4816-93ed-2cde1233eb58', 'D:\\secondhandplatformpics/goods/8350b900-4ff9-4026-8666-1f1240873bb8', 8, '9', '运动功能饮料', '否', '1', '全新', '0'),
	(43, '虎皮风爪', '零食', '20', '0', 12, 69, '200g', 'D:\\secondhandplatformpics/goods/0c701113-ae91-4159-b5d6-8531b5108e1c', 'D:\\secondhandplatformpics/goods/4e6616ab-eaf0-40f8-b052-5aec9bb2d8d4', 'D:\\secondhandplatformpics/goods/ff159354-6092-44e8-bf42-329fea2e31f0', 25, '9', '美味虎皮风爪~', '否', '1', '全新', '0'),
	(44, '每日坚果', '零食', '9', '0', 12, 69, '45cm*15cm', 'D:\\secondhandplatformpics/goods/acd52771-435b-4689-bb99-d0a5107e01a3', 'D:\\secondhandplatformpics/goods/84b8c7be-f60a-4af5-b16a-568deb47fbb7', 'D:\\secondhandplatformpics/goods/090af841-8502-4e8f-b11f-dc42d1509e53', 150, '8', '每日坚果，补充营养', '否', '1', '全新', '0'),
	(45, '面包', '零食', '20', '0', 12, 69, '350g', 'D:\\secondhandplatformpics/goods/e96ae786-fd94-4e92-81af-26ba902daa44', 'D:\\secondhandplatformpics/goods/e33ee106-80df-4e7f-ab26-28c97fdc086f', 'D:\\secondhandplatformpics/goods/5e436f59-5cee-452c-9898-1a06cc1c51a3', 15, '8', '美味面包~', '否', '1', '全新', '0'),
	(46, '巧克力', '零食', '20', '0', 11, 68, '400g', 'D:\\secondhandplatformpics/goods/6162863d-52d5-4397-b80c-f66e189687b7', 'D:\\secondhandplatformpics/goods/5ce36e82-6ece-4702-8d75-cf73dee08f6e', 'D:\\secondhandplatformpics/goods/12ca9f4f-3932-4d19-a116-345a9650200e', 40, '8', '美味巧克力~', '否', '1', '全新', '0'),
	(47, '薯片', '零食', '20', '0', 11, 68, '450', 'D:\\secondhandplatformpics/goods/a261b89c-33e7-4348-9108-6f06efe8f902', 'D:\\secondhandplatformpics/goods/4ee3e92c-1060-4a4a-88b6-1071632f0493', 'D:\\secondhandplatformpics/goods/99eb52a5-c0fe-4b20-8f2a-7d743d75a0a4', 30, '8', '美味薯片~', '否', '1', '全新', '0'),
	(48, '五香瓜子', '零食', '20', '0', 11, 68, '500g', 'D:\\secondhandplatformpics/goods/3aae8252-52a8-4657-b449-4a882c547339', 'D:\\secondhandplatformpics/goods/01be10eb-e1ad-490a-b963-cb7c36674368', 'D:\\secondhandplatformpics/goods/6a53dc28-74af-4c5f-b2c2-5b93f514a41a', 20, '9', '美味瓜子~', '否', '1', '全新', '0'),
	(49, '小圆饼干', '零食', '20', '0', 11, 68, '500g', 'D:\\secondhandplatformpics/goods/0d147ce1-d7f7-4d7f-8234-36a99c43395c', 'D:\\secondhandplatformpics/goods/c7ec0582-6ac8-487d-aa96-04f95520e048', 'D:\\secondhandplatformpics/goods/9c8340cb-c6bd-479f-a056-c7c25d490f0b', 10, '9', '美味小圆饼干~', '否', '1', '全新', '0'),
	(50, '奥特曼公仔', '生活用品', '7', '0', 11, 68, '110cm', 'D:\\secondhandplatformpics/goods/42ffec99-4408-481c-a514-1eb3839e93d0', 'D:\\secondhandplatformpics/goods/61bc0941-4d05-4d0d-bb63-8af894684dc3', 'D:\\secondhandplatformpics/goods/728a19fa-14ba-474c-ab8d-73074cfb459e', 100, '7', '可爱公仔', '否', '1', '九成新', '0'),
	(51, '奥特曼玩具', '生活用品', '8', '0', 11, 68, '80cm', 'D:\\secondhandplatformpics/goods/04b2bfe6-ad10-4c86-8a94-8a7c4463d31c', 'D:\\secondhandplatformpics/goods/d2d8fe08-6b15-4e97-952a-29ded7fbcf4f', 'D:\\secondhandplatformpics/goods/39b2f821-132f-42ce-9ffc-56f66b038b70', 80, '8', '可爱奥特曼~', '否', '1', '九成新', '0'),
	(52, '歼20模型', '生活用品', '5', '0', 11, 68, '28cm*17cm', 'D:\\secondhandplatformpics/goods/257e2a8c-0e82-46a9-a1ad-b05f60fb3833', 'D:\\secondhandplatformpics/goods/b78eefdd-1da7-4474-b196-ef83363b2576', 'D:\\secondhandplatformpics/goods/a2564217-004e-41e0-8b23-3d8e4ece8d01', 150, '6', '升级版模型', '否', '1', '全新', '0'),
	(53, '篮球', '生活用品', '6', '0', 11, 68, '30cm*30cm', 'D:\\secondhandplatformpics/goods/2238d649-0ff4-4b9f-a232-8a29543afa1f', 'D:\\secondhandplatformpics/goods/31ddf68c-7925-4a10-aeca-ed4d0f1f0068', 'D:\\secondhandplatformpics/goods/d1899af8-3df9-47ab-bfd2-a073c3c56416', 110, '8', '李宁篮球', '否', '1', '七成新', '0'),
	(54, '魔方', '生活用品', '4', '0', 11, 68, '7cm*7cm', 'D:\\secondhandplatformpics/goods/395324cd-46d6-4b34-ba68-f34cf3904cf7', 'D:\\secondhandplatformpics/goods/fee04e83-cc25-452e-85fd-cdb84c7a7bb6', 'D:\\secondhandplatformpics/goods/a46f0c96-563b-447c-a63e-4e01fe592723', 30, '8', '益智魔方', '否', '1', '八成新', '0'),
	(55, '中国象棋', '生活用品', '6', '0', 11, 68, '30cm*30cm', 'D:\\secondhandplatformpics/goods/7a75da87-bf94-46d2-8fc7-50b7495cb09a', 'D:\\secondhandplatformpics/goods/a2693c59-ae6f-4ca8-962e-558ccbbc170e', 'D:\\secondhandplatformpics/goods/f92dc8d1-5b2b-472c-a234-e7392310b225', 80, '8', '有可折叠棋盘哦', '否', '1', '九成新', '0'),
	(56, '小黄人玩具', '生活用品', '7', '0', 11, 68, '30cm*20cm', 'D:\\secondhandplatformpics/goods/6bc12706-b2bc-41e4-bd41-d87fc3201de3', 'D:\\secondhandplatformpics/goods/04721696-87b8-4c9b-8986-7725c9ad8530', 'D:\\secondhandplatformpics/goods/58c64f6e-d748-4ee8-ac13-282638cac919', 50, '9', '可爱小黄人~', '否', '1', '九成新', '0'),
	(57, '眼罩', '生活用品', '8', '0', 11, 68, '20cm', 'D:\\secondhandplatformpics/goods/2b4366c2-9b16-42ee-ad74-6a5de9c67e21', 'D:\\secondhandplatformpics/goods/3561487f-55ab-471a-b56e-2a0e9ca50abc', 'D:\\secondhandplatformpics/goods/d162a2b3-03ee-4132-80d6-c957bf566c0e', 20, '9', '防光照', '否', '1', '九成新', '0'),
	(58, '瑜伽垫', '生活用品', '6', '0', 11, 68, '2m*1m', 'D:\\secondhandplatformpics/goods/8185cd87-0d26-4337-977c-59c580fc7711', 'D:\\secondhandplatformpics/goods/b0fbb6f3-026c-4c7b-8885-6cf8cfac9d6d', 'D:\\secondhandplatformpics/goods/d1dbdd62-1c8e-488b-8821-f69fb77e528e', 50, '6', '做运动专用~', '否', '1', '九成新', '0'),
	(59, '雨伞', '生活用品', '7', '0', 11, 68, '1m*1m', 'D:\\secondhandplatformpics/goods/8f9b8a26-8667-4d58-99b6-b5c7c0a89c9d', 'D:\\secondhandplatformpics/goods/b877a720-5d4a-4634-8461-46ea5b8d1e02', 'D:\\secondhandplatformpics/goods/7456f15b-9b60-40d1-aee0-9d028809843c', 40, '9', '天堂伞', '否', '1', '九成新', '0'),
	(60, '运动包', '生活用品', '9', '0', 11, 68, '45cm*27cm', 'D:\\secondhandplatformpics/goods/15b0cbde-6f1c-499f-8ae6-73fcd1e30937', 'D:\\secondhandplatformpics/goods/33e940b5-d8ef-4489-aeb8-5c9e1c131ef3', 'D:\\secondhandplatformpics/goods/2cc83573-1337-4a19-9bef-f7fa9f065439', 90, '9', '运动专用包', '否', '1', '八成新', '0'),
	(61, '粘钩', '生活用品', '50', '0', 11, 68, '5cm*5cm', 'D:\\secondhandplatformpics/goods/2cdda256-c2ac-4687-9610-a80de58414f8', 'D:\\secondhandplatformpics/goods/47a756e2-ee54-4799-a1e8-3f65a1f58b5b', 'D:\\secondhandplatformpics/goods/28d0f379-655c-4e3e-8794-5dd015cd1eb7', 5, '9', '方便的粘钩~', '否', '2', '全新', '0'),
	(62, '白鹿原', '书籍', '5', '0', 11, 68, '15cm*17cm', 'D:\\secondhandplatformpics/goods/fdfc2b73-3fde-4359-b608-5bc75779878c', 'D:\\secondhandplatformpics/goods/76a8365e-8a06-48ef-91fd-6afa8674175d', 'D:\\secondhandplatformpics/goods/bb09ae75-ec03-40b0-9ba5-7e2157c4f049', 45, '7', '白鹿原原著', '否', '1', '九成新', '0'),
	(63, '父与子', '书籍', '9', '0', 11, 68, '40cm*30cm', 'D:\\secondhandplatformpics/goods/7dfb0e1a-0b79-42fa-8e79-da7cac3d7c33', 'D:\\secondhandplatformpics/goods/32f18aaa-938f-4258-85ea-b9007d49ef98', 'D:\\secondhandplatformpics/goods/bbb394a7-6ce2-43f7-acf0-a561d993d026', 210, '8', '父与子漫画全套', '否', '1', '八成新', '0'),
	(64, '哈利波特', '书籍', '9', '0', 11, 68, '70cm*30cm', 'D:\\secondhandplatformpics/goods/ce5a6a77-df9a-42af-ac04-8341a81ad5a8', 'D:\\secondhandplatformpics/goods/3b767196-5007-4e50-bfbd-b296f1bde981', 'D:\\secondhandplatformpics/goods/b8f48d23-074f-41f5-bfe5-6d3e8dfb889e', 300, '7', '哈利波特全套', '否', '1', '八成新', '0'),
	(65, '红楼梦', '书籍', '10', '0', 11, 68, '17cm*13cm', 'D:\\secondhandplatformpics/goods/ef837721-028c-4b20-a71c-a63e3c516df5', 'D:\\secondhandplatformpics/goods/5f86d565-7daf-4161-87c6-1575005e67dc', 'D:\\secondhandplatformpics/goods/e786a942-c210-4fb2-bc68-bbda80140bcb', 45, '9', '四大名著红楼梦', '否', '1', '九成新', '0'),
	(66, '活着', '书籍', '12', '0', 11, 68, '13cm*15cm', 'D:\\secondhandplatformpics/goods/a484de1d-bff3-4db1-b39e-14f406def9b9', 'D:\\secondhandplatformpics/goods/20b87533-40ac-472b-9b33-2a17505126d1', 'D:\\secondhandplatformpics/goods/fda87759-99ed-4369-af75-f5d725461d77', 35, '7', '余华著', '否', '1', '八成新', '0'),
	(67, '漫画中国史', '书籍', '7', '0', 11, 68, '35cm*40cm', 'D:\\secondhandplatformpics/goods/07448b70-728a-493c-b2fb-3df733f91b48', 'D:\\secondhandplatformpics/goods/6fbc924d-2956-4e82-8fa5-1c364f7f9926', 'D:\\secondhandplatformpics/goods/0ab69224-a730-4c67-b4fd-1a0f3ea2d031', 70, '8', '中国史大结局啦', '否', '1', '八成新', '0'),
	(68, '三体', '书籍', '9', '0', 12, 69, '35cm*20cm', 'D:\\secondhandplatformpics/goods/ef1a8155-a1b4-4fc3-9830-283f853a4b61', 'D:\\secondhandplatformpics/goods/5dd37a7a-6a31-4d8b-b3ad-703adbeb2354', 'D:\\secondhandplatformpics/goods/618a89e2-fd7f-4f9d-83b3-483927abc7ec', 100, '8', '三体全集', '否', '1', '八成新', '0'),
	(69, '概论', '书籍', '7', '0', 12, 69, '20cm*15cm', 'D:\\secondhandplatformpics/goods/8383c9f6-e372-4650-ae55-63ddfabf38e0', 'D:\\secondhandplatformpics/goods/d2755b2c-683d-4d8b-a8df-8ab2e761ee64', 'D:\\secondhandplatformpics/goods/bb7a2604-2b4c-4674-befa-96612e93459d', 30, '8', '二手毛概课本', '否', '1', '六成新', '0'),
	(70, '山海经', '书籍', '6', '0', 12, 69, '25cm*20cm', 'D:\\secondhandplatformpics/goods/6c39a4d1-efd6-4fef-a19b-07cd0e1dccfb', 'D:\\secondhandplatformpics/goods/a7d2f490-fcad-4cfc-ab5b-dc1c122ae149', 'D:\\secondhandplatformpics/goods/116d1596-23a5-4f99-b4dd-f195426fca67', 80, '9', '山海经彩色版', '否', '1', '九成新', '0'),
	(71, '数学之美', '书籍', '9', '0', 12, 69, '23cm*19cm', 'D:\\secondhandplatformpics/goods/1402e2ea-48c5-414e-9d69-8b3d13ddc4ae', 'D:\\secondhandplatformpics/goods/c236556a-68a9-43dd-9c31-cfc0363d24c7', 'D:\\secondhandplatformpics/goods/4c8d39b8-ff63-4ffe-b1ac-5c6967da6298', 35, '7', '领略数学之美', '否', '1', '八成新', '0'),
	(72, '算法导论', '书籍', '9', '0', 12, 69, '35cm*29cm', 'D:\\secondhandplatformpics/goods/e4aea572-88d2-4976-8804-9dd72168105d', 'D:\\secondhandplatformpics/goods/3089b155-49ae-4b8c-a4a4-b3feab331862', 'D:\\secondhandplatformpics/goods/7f1e1fd6-fe2c-4c78-abfb-8e3b0d763b82', 70, '8', '正版算法导论', '否', '1', '八成新', '0'),
	(73, '小王子', '书籍', '9', '0', 12, 69, '30cm*20cm', 'D:\\secondhandplatformpics/goods/6c7c7892-c2de-494a-a070-e9355dd3fde9', 'D:\\secondhandplatformpics/goods/8d1e6d34-95ac-40e7-ba37-b0728b4f8139', 'D:\\secondhandplatformpics/goods/c89427c8-64b8-47a6-ac15-c6c040869ca7', 42, '6', '睡前必看', '否', '1', '九成新', '0'),
	(74, '笔筒', '文具', '8', '0', 12, 69, '19cm高', 'D:\\secondhandplatformpics/goods/6b2eb3e4-9e63-42a7-b223-ab957c235fc2', 'D:\\secondhandplatformpics/goods/79d66dcb-1bdd-4469-8b16-62485b4a2e56', 'D:\\secondhandplatformpics/goods/64f8bd73-bd29-494f-84de-6c6e6e717d14', 15, '8', '容量大，超能装', '否', '1', '九成新', '0'),
	(75, '订书器', '文具', '8', '0', 12, 69, '15cm', 'D:\\secondhandplatformpics/goods/1575d134-189d-4a9e-92a7-bde1db8b7f48', 'D:\\secondhandplatformpics/goods/b132da08-5ccd-4a47-91b6-665a15c9e9fa', 'D:\\secondhandplatformpics/goods/fb4f4ebb-f6ea-4697-908d-31157c1a8d75', 20, '9', '零散纸张钉起来', '否', '1', '全新', '0'),
	(76, '钢笔', '文具', '7', '1', 12, 69, '20cm', 'D:\\secondhandplatformpics/goods/0f6cdc8e-4cf2-4567-ad20-b39ec5ec84ff', 'D:\\secondhandplatformpics/goods/c7b92359-e4d0-4c3b-8f1d-553045bca88e', 'D:\\secondhandplatformpics/goods/c8e2e798-ffc0-4a3e-bcb4-4980e7a0cf54', 18, '6', '好用的钢笔', '否', '1', '八成新', '64'),
	(77, '剪刀', '文具', '8', '0', 12, 69, '15cm', 'D:\\secondhandplatformpics/goods/74bfa401-8357-4c40-8151-aa5508d6f795', 'D:\\secondhandplatformpics/goods/5bf8da1a-a397-48b7-8148-20f707620895', 'D:\\secondhandplatformpics/goods/a82d839a-c480-411c-b3b3-2b471fa7972c', 15, '8', '剪刀~', '否', '1', '八成新', '0'),
	(78, '胶棒', '文具', '12', '0', 12, 69, '13cm', 'D:\\secondhandplatformpics/goods/d1d726d6-e3c8-4d09-b258-0f2a7dd1edc0', 'D:\\secondhandplatformpics/goods/d4ff9f8d-fcb3-4a87-8d31-a1cd51298d99', 'D:\\secondhandplatformpics/goods/7a91ae3f-de80-412a-bad5-61c08ec362de', 10, '9', '胶棒~', '否', '1', '全新', '0'),
	(79, '毛笔套装', '文具', '7', '0', 12, 69, '23cm', 'D:\\secondhandplatformpics/goods/a463ee0a-4d98-4741-af67-4f06015c68ff', 'D:\\secondhandplatformpics/goods/b4e0661a-20f3-4912-921b-ea333a99218d', 'D:\\secondhandplatformpics/goods/1cd90ccc-a2bb-4282-adb1-68b2ad699937', 20, '9', '文房某宝毛笔', '否', '1', '全新', '0'),
	(80, '水粉颜料', '文具', '9', '0', 11, 68, '24cm*15cm', 'D:\\secondhandplatformpics/goods/19810fad-f5a7-464a-9ee3-fa026ec19c74', 'D:\\secondhandplatformpics/goods/9cef44a5-3900-478f-a136-287b9684ed16', 'D:\\secondhandplatformpics/goods/672c9293-f375-496a-a33b-00dc284975b7', 50, '9', '爱好绘画的宝贝入手啦', '否', '1', '九成新', '0'),
	(81, '文具盒', '文具', '9', '0', 11, 68, '21cm', 'D:\\secondhandplatformpics/goods/e1559da8-34eb-4a6c-b010-5675acf8c5a6', 'D:\\secondhandplatformpics/goods/36e3117e-d6e5-4ae3-8924-d94fe86c3e07', 'D:\\secondhandplatformpics/goods/89eec486-3a06-4e56-ad96-7689cd3f41e8', 20, '8', '装文具', '否', '1', '八成新', '0'),
	(82, '宣纸', '文具', '29', '0', 11, 68, '20cm*18cm', 'D:\\secondhandplatformpics/goods/bfc8d7f2-9062-45e7-803a-872288d745ca', 'D:\\secondhandplatformpics/goods/d821bc30-b3f0-460d-a94b-defa8292ba19', 'D:\\secondhandplatformpics/goods/7be30397-6945-455a-8646-fefee1f27d57', 25, '8', '文房四宝宣纸', '否', '1', '九成新', '0'),
	(83, '砚台', '文具', '5', '4', 11, 68, '10cm*10cm', 'D:\\secondhandplatformpics/goods/0721c6bc-1ab8-440c-ab4f-7e2d5df9bf32', 'D:\\secondhandplatformpics/goods/fc45ff9a-421d-47ee-b56a-2a241a355346', 'D:\\secondhandplatformpics/goods/24865258-f2f6-4194-a7d7-864cf46c9063', 40, '9', '文房四宝砚台', '否', '1', '全新', '89'),
	(84, '中性笔套装', '文具', '20', '0', 11, 68, '16cm', 'D:\\secondhandplatformpics/goods/7d2c9f3d-5ee1-4a04-9017-33d1f8e39107', 'D:\\secondhandplatformpics/goods/15f31291-099a-46b5-aa32-37e5a8b7cfbf', 'D:\\secondhandplatformpics/goods/bd9d3ade-3a55-4e18-98b4-5caeea308750', 20, '8', '360度顺滑', '否', '1', '全新', '0'),
	(85, '耳机', '电子产品', '7', '0', 11, 68, '10', 'D:\\secondhandplatformpics/goods/9822ac29-cfc1-4e3c-a2c2-676419f6c3c6', 'D:\\secondhandplatformpics/goods/b150b2c3-b12d-473d-87bd-39c9fbe20750', 'D:\\secondhandplatformpics/goods/958bd2fe-7032-4cda-a539-63237ae17f4d', 90, '9', '无', '否', '1', '九成新', '0');
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;

-- 导出  表 2018011365.merchant 结构
DROP TABLE IF EXISTS `merchant`;
CREATE TABLE IF NOT EXISTS `merchant` (
  `merchantID` int(11) NOT NULL AUTO_INCREMENT,
  `merchantname` varchar(5) DEFAULT NULL,
  `merchantpassword` varchar(5) DEFAULT NULL,
  `merchantbankcard` varchar(16) DEFAULT NULL,
  `merchantrealname` varchar(10) DEFAULT NULL,
  `merchantsex` varchar(5) DEFAULT NULL,
  `merchantphone` varchar(11) DEFAULT NULL,
  `businesslicensepath` varchar(200) DEFAULT NULL,
  `zidentitycardpath` varchar(200) DEFAULT NULL,
  `fidentitycardpath` varchar(200) DEFAULT NULL,
  `merchantstate` varchar(50) DEFAULT '0',
  `merchantbalance` varchar(50) DEFAULT '0',
  `merchantgoodrate` varchar(50) DEFAULT '0',
  `merchantrank` varchar(50) DEFAULT '1',
  PRIMARY KEY (`merchantID`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=gbk;

-- 正在导出表  2018011365.merchant 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `merchant` DISABLE KEYS */;
REPLACE INTO `merchant` (`merchantID`, `merchantname`, `merchantpassword`, `merchantbankcard`, `merchantrealname`, `merchantsex`, `merchantphone`, `businesslicensepath`, `zidentitycardpath`, `fidentitycardpath`, `merchantstate`, `merchantbalance`, `merchantgoodrate`, `merchantrank`) VALUES
	(68, 'twj', 'twj', '1101042000030412', '太雯娟', '女', '13718618750', 'D:\\secondhandplatformpics/7095f28c-12e4-4433-b585-55a35f49e840', 'D:\\secondhandplatformpics/4a8e1e3a-4646-4256-844c-381d854cefc4', 'D:\\secondhandplatformpics/6162e2c3-38eb-411e-84ad-f1bb3c03f019', '1', '943.05', '100', '1'),
	(69, 'hjx', 'hjx', '1432657890987652', '韩嘉馨', '女', '12638956341', 'D:\\secondhandplatformpics/a2abfc32-c3a0-4fd0-aaf7-3937b453f5d2', 'D:\\secondhandplatformpics/51ecbedb-b6a4-42e5-915f-61a0e4fe8960', 'D:\\secondhandplatformpics/09126b2f-2b12-4464-ad65-36f3c6c3aa33', '1', '590.21', '90', '1');
/*!40000 ALTER TABLE `merchant` ENABLE KEYS */;

-- 导出  表 2018011365.store 结构
DROP TABLE IF EXISTS `store`;
CREATE TABLE IF NOT EXISTS `store` (
  `storeid` int(11) NOT NULL AUTO_INCREMENT,
  `merchantid` int(11) DEFAULT NULL,
  `storename` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`storeid`),
  KEY `FK_store_merchant` (`merchantid`),
  CONSTRAINT `FK_store_merchant` FOREIGN KEY (`merchantid`) REFERENCES `merchant` (`merchantID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=gbk;

-- 正在导出表  2018011365.store 的数据：~1 rows (大约)
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
REPLACE INTO `store` (`storeid`, `merchantid`, `storename`) VALUES
	(11, 68, '温馨小窝'),
	(12, 69, '小森生活');
/*!40000 ALTER TABLE `store` ENABLE KEYS */;

-- 导出  表 2018011365.user 结构
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(5) DEFAULT NULL,
  `password` varchar(5) DEFAULT NULL,
  `name` varchar(10) DEFAULT NULL,
  `usersex` varchar(5) DEFAULT NULL,
  `userphone` varchar(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `userbankcard` varchar(16) DEFAULT NULL,
  `usercity` varchar(50) DEFAULT NULL,
  `userstate` varchar(2) DEFAULT '0',
  `userbalance` varchar(50) DEFAULT '0',
  `userpoints` int(10) DEFAULT '0',
  `usergoodrate` varchar(50) DEFAULT '暂无评价',
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=gbk;

-- 正在导出表  2018011365.user 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
REPLACE INTO `user` (`userID`, `username`, `password`, `name`, `usersex`, `userphone`, `email`, `userbankcard`, `usercity`, `userstate`, `userbalance`, `userpoints`, `usergoodrate`) VALUES
	(38, 'ylx', 'ylx', 'ylx', 'nv', '900909090', 'jiojgajdsa', 'pppppppppppppppp', 'beijing', '1', '1000000195.60', 2023, '80'),
	(39, 'juan', 'juan', '娟娟', '女', '10947586234', '122158921@qq.com', '1309286529736642', 'beijing', '1', '221.70', 946, '60'),
	(40, 'zny', 'zny', '郑娜瑛', '女', '00000000000', 'pppppppppp', '0000000000000000', '北京', '1', '964.00', 36, '暂无评价');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
