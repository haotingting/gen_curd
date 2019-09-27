drop table if exists ANT_USER_DISTRIBUTION_FIRST;

/*==============================================================*/
/* Table: ANT_USER_DISTRIBUTION_FIRST                           */
/*==============================================================*/
create table ANT_USER_DISTRIBUTION_FIRST
(
   ID                   bigint not null auto_increment comment '主键',
   DISTRIBUTION_CODE    varchar(50) comment '集散地编码',
   RENDEZVOUS_CITY      varchar(500) comment '集合城市',
   RENDEZVOUS_ADDRESS   varchar(500) comment '集合具体地址',
   DISMISS_CITY         varchar(500) comment '解散地点城市',
   DISMISS_ADDRESS      varchar(500) comment '解散具体地址',
   USER_CODE            varchar(50) comment '用户编码',
   FIRST_ORDER          integer comment '排序',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_USER_DISTRIBUTION_FIRST comment '我的常用库-常用集散表';
