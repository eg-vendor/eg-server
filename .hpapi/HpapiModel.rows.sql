-- Adminer 4.6.2 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';


INSERT IGNORE INTO `hpapi_call` (`model`, `spr`, `vendor`, `package`, `class`, `method`) VALUES
('ExampleVendor',	'egvUserDetail',	'eg-vendor',	'eg-server',	'\\Egv\\EgServer',	'getUserDetail');

INSERT IGNORE INTO `hpapi_method` (`vendor`, `package`, `class`, `method`, `label`, `notes`) VALUES
('eg-vendor',	'eg-server',	'\\Egv\\EgServer',	'getUserDetail',	'My details',	'eg-vendor details for this user.');

INSERT IGNORE INTO `hpapi_methodarg` (`vendor`, `package`, `class`, `method`, `argument`, `name`, `empty_allowed`, `pattern`) VALUES
('eg-vendor',	'eg-server',	'\\Egv\\EgServer',	'getUserDetail',	1,	'User ID',	0,	'int-11-positive');

INSERT IGNORE INTO `hpapi_model` (`model`, `notes`) VALUES
('ExampleVendor',	'Model for eg-vendor.');

INSERT IGNORE INTO `hpapi_package` (`vendor`, `package`, `notes`) VALUES
('eg-vendor',	'eg-server',	'eg-server API package.');

INSERT IGNORE INTO `hpapi_run` (`usergroup`, `vendor`, `package`, `class`, `method`) VALUES
('anon',	'eg-vendor',	'eg-server',	'\\Egv\\EgServer',	'getUserDetail');

INSERT IGNORE INTO `hpapi_spr` (`model`, `spr`, `notes`) VALUES
('ExampleVendor',	'egvUserDetail',	'User data for a primary UUID.');

INSERT IGNORE INTO `hpapi_sprarg` (`model`, `spr`, `argument`, `name`, `empty_allowed`, `pattern``) VALUES
('ExampleVendor',	'egvUserDetail',	1,	'User ID',	0,	'int-11-positive');

INSERT IGNORE INTO `hpapi_usergroup` (`usergroup`, `level`, `name`, `notes`) VALUES
('example',	100000,	'User of eg-vendor',	'Public user registered with eg-vendor');

INSERT IGNORE INTO `hpapi_membership` (`user_id`, `usergroup`) VALUES
('1',	'example');

