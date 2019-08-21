drop table if exists ANT_CUSTOMER_CONTACT;

/*==============================================================*/
/* Table: ANT_CUSTOMER_CONTACT                                  */
/*==============================================================*/
create table ANT_CUSTOMER_CONTACT
(
   ID                   bigint not null auto_increment comment '主键',
   CONTACT_CODE         varchar(50) comment '客户编码',
   KIND                 integer comment '客户类型 0-普通 1-负责人',
   NAME                 varchar(100) comment '姓名',
   DUTIES               varchar(200) comment '职务',
   MOBILE               varchar(50) comment '手机',
   TEL                  varchar(100) comment '电话',
   FAX                  varchar(100) comment '传真',
   EMAIL                varchar(200) comment '邮箱',
   WECHAT               varchar(200) comment '微信',
   QQ                   varchar(100) comment 'QQ',
   OTHER                varchar(500) comment '其他',
   REMARK               varchar(1000) comment '备注',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_CUSTOMER_CONTACT comment '客户联系人表';
