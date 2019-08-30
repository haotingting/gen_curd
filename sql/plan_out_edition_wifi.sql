drop table if exists ANT_PLAN_OUT_EDITION_WIFI;

/*==============================================================*/
/* Table: ANT_PLAN_OUT_EDITION_WIFI                             */
/*==============================================================*/
create table ANT_PLAN_OUT_EDITION_WIFI
(
   ID                   bigint not null auto_increment comment '主键',
   WIFI_CODE            varchar(50) comment 'WIFI编码',
   EDITION_CODE         varchar(50) comment '售价组编码',
   WIFI_USEAGE          varchar(500) comment 'WIFI使用地',
   WIFI_DAY             integer comment 'WIFI使用天数',
   WIFI_AMOUNT          decimal(15,2) comment 'WIFI使用收费',
   REQUEST_TYPE         integer comment 'WIFI-领用类型 1-游客自行领取 2-旅行社工作人员发放',
   REQUEST_DAY          integer comment 'WIFI-领用天数',
   REQUEST_ADDRESS      varchar(500) comment 'WIFI-领用地址',
   BACK_TYPE            integer comment 'WIFI-归还类型 1-游客自行归还 2-旅行社工作人员收取',
   BACK_DAY             integer comment 'WIFI-归还天数',
   BACK_ADDRESS         varchar(500) comment 'WIFI-归还地址',
   OTHER_INFO           varchar(500) comment '其它说明',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_PLAN_OUT_EDITION_WIFI comment '出境游班期售价组WIFI表';
