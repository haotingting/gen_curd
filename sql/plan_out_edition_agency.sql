drop table if exists ANT_PLAN_OUT_EDITION_AGENCY;

/*==============================================================*/
/* Table: ANT_PLAN_OUT_EDITION_AGENCY                           */
/*==============================================================*/
create table ANT_PLAN_OUT_EDITION_AGENCY
(
   ID                   bigint not null auto_increment comment '主键',
   AGENCY_CODE          varchar(50) comment '地接社编码',
   EDITION_CODE         varchar(50) comment '售价组编码',
   AGENCY_NAME          varchar(500) comment '地接社名称',
   CONTACT_NAME         varchar(500) comment '联系人',
   CONTACT_TEL          varchar(500) comment '联系电话',
   CONTACT_ADDRESS      varchar(500) comment '联系地址',
   GUIDE_INFO           varchar(500) comment '地接导游及电话[默认接团时告知]',
   GUIDE_WORK           varchar(500) comment '地接导游负责',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_PLAN_OUT_EDITION_AGENCY comment '出境游班期售价组地接社表';
