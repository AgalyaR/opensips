INSERT INTO version (table_name, table_version) values ('dr_gateways','5');
CREATE TABLE dr_gateways (
    id INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL,
    gwid CHAR(64) NOT NULL,
    type INT(11) UNSIGNED DEFAULT 0 NOT NULL,
    address CHAR(128) NOT NULL,
    strip INT(11) UNSIGNED DEFAULT 0 NOT NULL,
    pri_prefix CHAR(16) DEFAULT NULL,
    attrs CHAR(255) DEFAULT NULL,
    probe_mode INT(11) UNSIGNED DEFAULT 0 NOT NULL,
    description CHAR(128) DEFAULT '' NOT NULL
) ENGINE=MyISAM;

INSERT INTO version (table_name, table_version) values ('dr_rules','3');
CREATE TABLE dr_rules (
    ruleid INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL,
    groupid CHAR(255) NOT NULL,
    prefix CHAR(64) NOT NULL,
    timerec CHAR(255) NOT NULL,
    priority INT(11) DEFAULT 0 NOT NULL,
    routeid CHAR(255) DEFAULT NULL,
    gwlist CHAR(255) NOT NULL,
    attrs CHAR(255) DEFAULT NULL,
    description CHAR(128) DEFAULT '' NOT NULL
) ENGINE=MyISAM;

INSERT INTO version (table_name, table_version) values ('dr_carriers','1');
CREATE TABLE dr_carriers (
    id INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL,
    carrierid CHAR(64) NOT NULL,
    gwlist CHAR(255) NOT NULL,
    flags INT(11) UNSIGNED NOT NULL,
    attrs CHAR(255) NOT NULL,
    description CHAR(128) DEFAULT ''
) ENGINE=MyISAM;

INSERT INTO version (table_name, table_version) values ('dr_groups','2');
CREATE TABLE dr_groups (
    id INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL,
    username CHAR(64) NOT NULL,
    domain CHAR(128) DEFAULT '' NOT NULL,
    groupid INT(11) UNSIGNED DEFAULT 0 NOT NULL,
    description CHAR(128) DEFAULT '' NOT NULL
) ENGINE=MyISAM;

