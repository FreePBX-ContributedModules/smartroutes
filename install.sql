--
-- Database: `asterisk`
--

-- --------------------------------------------------------

--
-- Table structure for table `smartroute`
--
-- Note: search-type could be =, !=, LIKE, >, <, or other SQL operators when searching for a match in smartroute_dest

CREATE TABLE IF NOT EXISTS `smartroute` (
  `id` int unsigned NOT NULL PRIMARY KEY auto_increment,
  `name` varchar(40) NOT NULL,  
  `destination` varchar(50) default NULL,
  `faxenabled` tinyint(1) default NULL,  
  `faxdetection` varchar(20) default NULL,
  `faxdetectionwait` varchar(5) default NULL,
  `faxdestination` varchar(50) default NULL,
  `legacy_email` varchar(50) default NULL,
  `privacyman` tinyint(1) default NULL,
  `alertinfo` varchar(255) default NULL,
  `ringing` varchar(20) default NULL,
  `mohclass` varchar(80) NOT NULL default 'default',
  `description` varchar(80) default NULL,
  `grppre` varchar(80) default NULL,
  `delay_answer` int(2) default NULL,
  `pricid` varchar(20) default NULL,
  `pmmaxretries` varchar(2) default NULL,
  `pmminlength` varchar(2) default NULL,
  `limitciddigits` int(2) default NULL,
  `limitdiddigits` int(2) default NULL,
  `dbengine` varchar(20) default NULL,
  `odbc-dsn` varchar(60) default NULL,
  `mysql-host` varchar(60) default NULL,
  `mysql-database` varchar(64) default NULL,
  `mysql-username` varchar(16) default NULL,
  `mysql-password` varchar(60) default NULL,
  `search-type` varchar(20) default 'EXACT'
);

--
-- Table structure for table `smartroute_query`
--

CREATE TABLE IF NOT EXISTS `smartroute_query` (
  `id` INTEGER NOT NULL,
  `mainquery` tinyint(1) default NULL,
  `use_wizard` tinyint(1) default '1',
  `wiz_table` varchar(64) default NULL,
  `wiz_findcolumn` varchar(64) default NULL,
  `wiz_retcolumn` varchar(64) default NULL,
  `wiz_matchvar` varchar(64) default NULL,
  `adv_query` text,
  `adv_varname1` varchar(20) NOT NULL,
  `adv_varname2` varchar(20) NOT NULL,
  `adv_varname3` varchar(20) NOT NULL,
  `adv_varname4` varchar(20) NOT NULL,
  `adv_varname5` varchar(20) NOT NULL
);

--
-- Table structure for table `smartroute_dest`
--
-- Note: extvar allows you to specify the asterisk var to connect with if going to trunk or context (otherwise use EXT/DID)
-- 

CREATE TABLE IF NOT EXISTS `smartroute_dest` (
  `id` INTEGER NOT NULL, 
  `matchkey` varchar(255) default NULL,
  `extvar` varchar(50) default NULL,
  `destination` varchar(50) default NULL,
  `failover_dest` varchar(50) default NULL  
);

