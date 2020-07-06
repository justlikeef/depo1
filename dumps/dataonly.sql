-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.5.4-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping data for table depo.depo_configitem: ~5 rows (approximately)
DELETE FROM `depo_configitem`;
/*!40000 ALTER TABLE `depo_configitem` DISABLE KEYS */;
INSERT INTO `depo_configitem` (`id`, `name`, `description`, `owner`, `manager`) VALUES
	(1, 'A1', '', 'ap879', 'ap879'),
	(2, 'A2', '', 'ap879', 'ap879'),
	(3, 'Server 1', '', 'dc1234', 'dc1234'),
	(4, 'Server 2', '', 'dc2345', 'dc1234'),
	(5, 'Adobe Acrobat License', '', 'dc8789', 'dc8789');
/*!40000 ALTER TABLE `depo_configitem` ENABLE KEYS */;

-- Dumping data for table depo.depo_configitemattribute: ~23 rows (approximately)
DELETE FROM `depo_configitemattribute`;
/*!40000 ALTER TABLE `depo_configitemattribute` DISABLE KEYS */;
INSERT INTO `depo_configitemattribute` (`path`, `depth`, `numchild`, `id`, `name`, `description`, `valueType`, `valuePrompt`, `valueDefault`) VALUES
	('0002', 1, 4, 1, 'Item', 'Base Config Item', '', '', ''),
	('00020002', 2, 0, 2, 'AssetNumber', '', 'Char', 'asset number', ''),
	('00020008', 2, 0, 3, 'Owner', 'Config Item Owner', 'UserList', 'config item owner', ''),
	('00020007', 2, 0, 4, 'Manager', '', 'UserList', '', 'config item manager'),
	('00020006', 2, 1, 5, 'ConfigItemType', '', 'Choice', 'what type of configuration item is this', ''),
	('000200060003', 3, 4, 6, 'Hardware', '', 'Label', '', ''),
	('0002000600030002', 4, 0, 7, 'ConfigBackup', '', 'YesNo', 'back up config', ''),
	('0002000600030004', 4, 0, 8, 'ManagePortSecurity', '', 'YesNo', 'manage port security', ''),
	('0002000600030006', 4, 2, 9, 'Manufacturer', '', 'Choice', 'manufacturer', ''),
	('000200060003000600040002', 6, 5, 10, 'OperatingSystem', '', 'Choice', '', ''),
	('0002000600030006000400020008', 7, 1, 11, 'IOS', '', 'Label', '', ''),
	('0002000600030006000400020003', 7, 0, 12, 'ACI', '', 'Label', '', ''),
	('00020006000300060004', 5, 2, 13, 'Cisco', '', 'Label', '', ''),
	('00020006000300060003', 5, 0, 14, 'APC', '', 'Label', '', ''),
	('000200060003000600040002000C', 7, 0, 15, 'WLC', '', 'Label', '', ''),
	('0002000600030006000400020007', 7, 0, 16, 'ASA', '', 'Label', '', ''),
	('00020006000300060004000200080002', 8, 1, 17, 'AccessMethod', '', 'Choice', 'access method', ''),
	('000200060003000600040002000800020004', 9, 2, 18, 'SSH', '', 'Label', '', ''),
	('0002000600030006000400020008000200040003', 10, 0, 19, 'Credentials', '', 'Credential', '', ''),
	('0002000600030006000400020008000200040004', 10, 0, 20, 'IPAddress', '', 'GenericIPAddress', 'ip address', ''),
	('000200060003000600040002000B', 7, 0, 21, 'NXOS', '', 'Label', '', ''),
	('000200060003000600040004', 6, 0, 22, 'OSVersion', '', 'Char', '', ''),
	('0002000600030008', 4, 0, 23, 'SerialNumber', '', 'Char', 'serial number', '');
/*!40000 ALTER TABLE `depo_configitemattribute` ENABLE KEYS */;

-- Dumping data for table depo.depo_configitemattributevalue: ~0 rows (approximately)
DELETE FROM `depo_configitemattributevalue`;
/*!40000 ALTER TABLE `depo_configitemattributevalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `depo_configitemattributevalue` ENABLE KEYS */;

-- Dumping data for table depo.depo_configitemconfigitemrole: ~5 rows (approximately)
DELETE FROM `depo_configitemconfigitemrole`;
/*!40000 ALTER TABLE `depo_configitemconfigitemrole` DISABLE KEYS */;
INSERT INTO `depo_configitemconfigitemrole` (`id`, `rolePriority`, `ConfigItem_id`, `ConfigItemRole_id`) VALUES
	(3, 100, 2, 2),
	(4, 0, 4, 4),
	(5, 0, 3, 3),
	(6, 0, 5, 5),
	(7, 0, 1, 2);
/*!40000 ALTER TABLE `depo_configitemconfigitemrole` ENABLE KEYS */;

-- Dumping data for table depo.depo_configitemrole: ~5 rows (approximately)
DELETE FROM `depo_configitemrole`;
/*!40000 ALTER TABLE `depo_configitemrole` DISABLE KEYS */;
INSERT INTO `depo_configitemrole` (`id`, `name`, `description`) VALUES
	(1, 'Switch', ''),
	(2, 'Router', ''),
	(3, 'Infrastructure Server', ''),
	(4, 'Application Server', ''),
	(5, 'License', '');
/*!40000 ALTER TABLE `depo_configitemrole` ENABLE KEYS */;

-- Dumping data for table depo.depo_configitemtree: ~11 rows (approximately)
DELETE FROM `depo_configitemtree`;
/*!40000 ALTER TABLE `depo_configitemtree` DISABLE KEYS */;
INSERT INTO `depo_configitemtree` (`path`, `depth`, `numchild`, `id`, `name`, `description`, `leafType`) VALUES
	('0003', 1, 4, 1, 'Primerica', '', 'static'),
	('00030006', 2, 2, 2, 'Network Devices', '', 'static'),
	('00030004', 2, 0, 3, 'Desktop', '', 'static'),
	('000300070001', 3, 2, 4, 'Server', '', 'static'),
	('00030007', 2, 1, 5, 'Operations', '', 'static'),
	('00030005', 2, 0, 6, 'Facilities', '', 'static'),
	('0002', 1, 0, 7, 'Incorrect', '', 'static'),
	('000300060007', 3, 0, 8, 'Switches', '', 'static'),
	('000300060002', 3, 0, 9, 'Routers', '', 'static'),
	('0003000700010004', 4, 0, 10, 'Unix', '', 'static'),
	('0003000700010006', 4, 0, 11, 'Windows', '', 'static');
/*!40000 ALTER TABLE `depo_configitemtree` ENABLE KEYS */;

-- Dumping data for table depo.depo_configitemtree_configitems: ~5 rows (approximately)
DELETE FROM `depo_configitemtree_configitems`;
/*!40000 ALTER TABLE `depo_configitemtree_configitems` DISABLE KEYS */;
INSERT INTO `depo_configitemtree_configitems` (`id`, `configitemtree_id`, `configitem_id`) VALUES
	(7, 3, 5),
	(1, 8, 1),
	(2, 8, 2),
	(5, 10, 3),
	(6, 11, 4);
/*!40000 ALTER TABLE `depo_configitemtree_configitems` ENABLE KEYS */;

-- Dumping data for table depo.depo_credentials_credentialset: ~0 rows (approximately)
DELETE FROM `depo_credentials_credentialset`;
/*!40000 ALTER TABLE `depo_credentials_credentialset` DISABLE KEYS */;
INSERT INTO `depo_credentials_credentialset` (`id`, `name`, `description`, `user`, `userPass`, `privUser`, `privUserPass`) VALUES
	(1, 'Ciscowrk', '', 'ciscowrk', _binary 0x6741414141414264385377324C2D63633054456669714477635837383852522D476A753247515573435851505F474D786D476967776355554C37466347666D554D4F68644F4A464C4758354F484130463652736C566C6F636D503942486159674A673D3D, '', _binary 0x67414141414142643853773254707276734A7650414A53386739657A4C5862796347737A4F414C41507A4166596776373058775A4371706A793662707134316877585563384B6345467753594B326D2D616E774954704332644567595F34793758673D3D);
/*!40000 ALTER TABLE `depo_credentials_credentialset` ENABLE KEYS */;

-- Dumping data for table depo.django_jstree_jstree: ~0 rows (approximately)
DELETE FROM `django_jstree_jstree`;
/*!40000 ALTER TABLE `django_jstree_jstree` DISABLE KEYS */;
INSERT INTO `django_jstree_jstree` (`id`, `name`, `description`, `appname`, `treemodelname`, `leaffieldname`, `enableCheckbox`, `enableContextmenu`, `enableSearch`, `enableFuzzySearch`, `showOnlyMatches`, `showOnlyMatchesChildren`, `enableDND`, `enableSort`, `enableState`, `applyTypes`, `enableUnique`, `enableWholerow`, `enableChanged`, `additionalJS`) VALUES
	(1, 'ConfigItemTree', '', 'depo', 'ConfigItemTree', 'configItems', 0, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1, '');
/*!40000 ALTER TABLE `django_jstree_jstree` ENABLE KEYS */;

-- Dumping data for table depo.django_jstree_nodetype: ~2 rows (approximately)
DELETE FROM `django_jstree_nodetype`;
/*!40000 ALTER TABLE `django_jstree_nodetype` DISABLE KEYS */;
INSERT INTO `django_jstree_nodetype` (`id`, `name`, `description`, `maxChildren`, `maxDepth`, `iconClass`, `liAttributes`, `aAttributes`) VALUES
	(1, 'ConfigItem', '', -1, -1, '', '', ''),
	(2, 'Folder', '', -1, -1, '', '', '');
/*!40000 ALTER TABLE `django_jstree_nodetype` ENABLE KEYS */;

-- Dumping data for table depo.django_jstree_nodetypepopupmenuitem: ~10 rows (approximately)
DELETE FROM `django_jstree_nodetypepopupmenuitem`;
/*!40000 ALTER TABLE `django_jstree_nodetypepopupmenuitem` DISABLE KEYS */;
INSERT INTO `django_jstree_nodetypepopupmenuitem` (`id`, `displayOrder`, `nodeType_id`, `popupMenuItem_id`) VALUES
	(1, 0, 1, 5),
	(2, 0, 2, 6),
	(4, 0, 2, 7),
	(5, 0, 1, 7),
	(6, 0, 2, 8),
	(7, 0, 2, 9),
	(8, 0, 2, 10),
	(9, 0, 1, 11),
	(11, 1, 2, 4),
	(12, 2, 2, 3);
/*!40000 ALTER TABLE `django_jstree_nodetypepopupmenuitem` ENABLE KEYS */;

-- Dumping data for table depo.django_jstree_nodetype_childnodetypes: ~0 rows (approximately)
DELETE FROM `django_jstree_nodetype_childnodetypes`;
/*!40000 ALTER TABLE `django_jstree_nodetype_childnodetypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_jstree_nodetype_childnodetypes` ENABLE KEYS */;

-- Dumping data for table depo.django_jstree_nodetype_jstrees: ~2 rows (approximately)
DELETE FROM `django_jstree_nodetype_jstrees`;
/*!40000 ALTER TABLE `django_jstree_nodetype_jstrees` DISABLE KEYS */;
INSERT INTO `django_jstree_nodetype_jstrees` (`id`, `nodetype_id`, `jstree_id`) VALUES
	(1, 1, 1),
	(2, 2, 1);
/*!40000 ALTER TABLE `django_jstree_nodetype_jstrees` ENABLE KEYS */;

-- Dumping data for table depo.django_jstree_popupmenuitem: ~4 rows (approximately)
DELETE FROM `django_jstree_popupmenuitem`;
/*!40000 ALTER TABLE `django_jstree_popupmenuitem` DISABLE KEYS */;
INSERT INTO `django_jstree_popupmenuitem` (`path`, `depth`, `numchild`, `id`, `name`, `description`, `menuLabel`, `menuTooltip`, `seperatorBefore`, `seperatorAfter`, `menuItemClass`, `menuClickJSFunction`, `shortcut`, `shortcutLabel`) VALUES
	('0001', 1, 0, 1, 'NewFolder', '', 'Folder', 'Create a New Folder', 0, 0, '', '', 0, ''),
	('0002', 1, 0, 2, 'NewConfigItem', '', 'Config Item', 'Create a New Config Item', 0, 0, '', '', 0, ''),
	('0003', 1, 0, 3, 'DeleteFolder', '', 'Delete', 'Delete this folder', 0, 0, '', '', 0, ''),
	('0004', 1, 0, 4, 'FolderCreateMenu', 'Create new item', 'Create', '', 0, 0, '', '', 0, '');
/*!40000 ALTER TABLE `django_jstree_popupmenuitem` ENABLE KEYS */;

-- Dumping data for table depo.django_jstree_popupmenuitem_childmenuitems: ~2 rows (approximately)
DELETE FROM `django_jstree_popupmenuitem_childmenuitems`;
/*!40000 ALTER TABLE `django_jstree_popupmenuitem_childmenuitems` DISABLE KEYS */;
INSERT INTO `django_jstree_popupmenuitem_childmenuitems` (`id`, `from_popupmenuitem_id`, `to_popupmenuitem_id`) VALUES
	(1, 4, 1),
	(2, 4, 2);
/*!40000 ALTER TABLE `django_jstree_popupmenuitem_childmenuitems` ENABLE KEYS */;

-- Dumping data for table depo.django_migrations: ~20 rows (approximately)
DELETE FROM `django_migrations`;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2020-07-02 17:36:22.853630'),
	(2, 'auth', '0001_initial', '2020-07-02 17:36:25.360632'),
	(3, 'admin', '0001_initial', '2020-07-02 17:36:42.110628'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2020-07-02 17:36:45.249640'),
	(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-07-02 17:36:45.397634'),
	(6, 'contenttypes', '0002_remove_content_type_name', '2020-07-02 17:36:47.216632'),
	(7, 'auth', '0002_alter_permission_name_max_length', '2020-07-02 17:36:48.939632'),
	(8, 'auth', '0003_alter_user_email_max_length', '2020-07-02 17:36:49.126628'),
	(9, 'auth', '0004_alter_user_username_opts', '2020-07-02 17:36:49.221650'),
	(10, 'auth', '0005_alter_user_last_login_null', '2020-07-02 17:36:50.005634'),
	(11, 'auth', '0006_require_contenttypes_0002', '2020-07-02 17:36:50.057630'),
	(12, 'auth', '0007_alter_validators_add_error_messages', '2020-07-02 17:36:50.144634'),
	(13, 'auth', '0008_alter_user_username_max_length', '2020-07-02 17:36:50.338631'),
	(14, 'auth', '0009_alter_user_last_name_max_length', '2020-07-02 17:36:50.589637'),
	(15, 'auth', '0010_alter_group_name_max_length', '2020-07-02 17:36:50.765637'),
	(16, 'auth', '0011_update_proxy_permissions', '2020-07-02 17:36:50.863631'),
	(17, 'depo', '0001_initial', '2020-07-02 17:36:53.444631'),
	(18, 'depo_credentials', '0001_initial', '2020-07-02 17:37:02.623721'),
	(19, 'django_jstree', '0001_initial', '2020-07-02 17:37:07.606709'),
	(20, 'sessions', '0001_initial', '2020-07-02 17:37:18.124707');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
