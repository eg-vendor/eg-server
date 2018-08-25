-- Adminer 4.6.2 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';


INSERT IGNORE INTO `hpapi_call` (`call_Model`, `call_Spr`, `call_Vendor`, `call_Package`, `call_Class`, `call_Method`) VALUES
('ExampleVendor',	'egvUserDetail',	'eg-vendor',	'eg-server',	'\\Egv\\EgServer',	'getUserDetail');

INSERT IGNORE INTO `hpapi_method` (`method_Vendor`, `method_Package`, `method_Class`, `method_Method`, `method_Label`, `method_Notes`) VALUES
('eg-vendor',	'eg-server',	'\\Egv\\EgServer',	'getUserDetail',	'My details',	'eg-vendor details for this user.');

INSERT IGNORE INTO `hpapi_methodarg` (`methodarg_Vendor`, `methodarg_Package`, `methodarg_Class`, `methodarg_Method`, `methodarg_Argument`, `methodarg_Name`, `methodarg_Empty_Allowed`, `methodarg_Pattern`) VALUES
('eg-vendor',	'eg-server',	'\\Egv\\EgServer',	'getUserDetail',	1,	'User UUID',	0,	'uuid-hpapi');

INSERT IGNORE INTO `hpapi_model` (`model_Model`, `model_Notes`, `model_DSN`, `model_Usr`, `model_Pwd`) VALUES
('ExampleVendor',	'Model for eg-vendor.',	'mysql:host=localhost;dbname=egvendor;port=3306;charset=utf8',	'hpapi',	'abc');

INSERT IGNORE INTO `hpapi_package` (`package_Vendor`, `package_Package`, `package_Notes`) VALUES
('eg-vendor',	'eg-server',	'eg-server API package.');

INSERT IGNORE INTO `hpapi_run` (`run_Usergroup`, `run_Vendor`, `run_Package`, `run_Class`, `run_Method`) VALUES
('anon',	'eg-vendor',	'eg-server',	'\\Egv\\EgServer',	'getUserDetail');

INSERT IGNORE INTO `hpapi_spr` (`spr_Model`, `spr_Spr`, `spr_Notes`) VALUES
('ExampleVendor',	'egvUserDetail',	'User data for a primary UUID.');

INSERT IGNORE INTO `hpapi_sprarg` (`sprarg_Model`, `sprarg_Spr`, `sprarg_Argument`, `sprarg_Name`, `sprarg_Empty_Allowed`, `sprarg_Pattern`) VALUES
('ExampleVendor',	'egvUserDetail'	1,	'User UUID',	0,	'uuid-hpapi');

INSERT IGNORE INTO `hpapi_usergroup` (`usergroup_Usergroup`, `usergroup_Level`, `usergroup_Name`, `usergroup_Notes`) VALUES
('example',	100000,	'User of eg-vendor',	'Public user registered with eg-vendor');

INSERT IGNORE INTO `hpapi_membership` (`membership_User_UUID`, `membership_Usergroup`) VALUES
('20180720110427::57d2eff7-8ff3-11e8-902b-001f16148bc1',	'example');

