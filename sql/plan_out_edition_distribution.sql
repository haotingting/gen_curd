drop table if exists ANT_PLAN_OUT_EDITION_DISTRIBUTION;

/*==============================================================*/
/* Table: ANT_PLAN_OUT_EDITION_DISTRIBUTION                     */
/*==============================================================*/
create table ANT_PLAN_OUT_EDITION_DISTRIBUTION
(
   ID                   bigint not null auto_increment comment '主键',
   DISTRIBUTION_CODE    varchar(50) comment '集散编码',
   EDITION_CODE         varchar(50) comment '售价组编码',
   RENDEZVOUS_TIME_TYPE integer comment '集合日期类型 1-旅行第1天 2-旅行提前1天',
   RENDEZVOUS_TIME_HOUR integer comment '集合时间-小时',
   RENDEZVOUS_TIME_MINUTE integer comment '集合时间-分钟',
   RENDEZVOUS_CITY      varchar(500) comment '集合城市',
   RENDEZVOUS_ADDRESS   varchar(500) comment '集合具体地址',
   DISMISS_CITY         varchar(500) comment '解散地点城市',
   DISMISS_ADDRESS      varchar(500) comment '解散具体地址',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_PLAN_OUT_EDITION_DISTRIBUTION comment '出境游班期售价组集散表';
