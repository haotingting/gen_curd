drop table if exists ANT_PLAN_TEAM_TICKET;

/*==============================================================*/
/* Table: ANT_PLAN_TEAM_TICKET                                  */
/*==============================================================*/
create table ANT_PLAN_TEAM_TICKET
(
   ID                   bigint not null auto_increment comment '主键',
   TICKET_CODE          varchar(50) comment '订票文件编码',
   SCHEDULE_CODE        varchar(50) comment '班期编码',
   CATEGORY             integer comment '订票文件类型 1-订票 2-订房 3-订车9-综合',
   TICKET_ORDER         integer comment '订票文件排序',
   TICKET_NAME          varchar(1000) comment '订票文件名称',
   SUPPLIER_CODE        varchar(50) comment '供应商编码',
   SUPPLIER_CONTACT_CODE varchar(50) comment '供应商联系人编码',
   SUPPLIER_CONTACT_NAME varchar(1000) comment '供应商联系人名称',
   SUPPLIER_CONTACT_TEL varchar(1000) comment '供应商联系人电话',
   SUPPLIER_CONTACT_FAX varchar(1000) comment '供应商联系人传真',
   APPLICATION_DEPT_CODE varchar(50) comment '申请部门编码',
   APPLICATION_CONTACT_CODE varchar(50) comment '申请部门联系人编码',
   APPLICATION_CONTACT_NAME varchar(1000) comment '申请部门联系人名称',
   APPLICATION_CONTACT_TEL varchar(1000) comment '申请部门联系人电话',
   APPLICATION_CONTACT_FAX varchar(1000) comment '申请部门联系人传真',
   APPLICATION_CONTENT  text comment '申请内容',
   APPLICATION_NAME_LIST text comment '申请名单',
   APPLICATION_USER_ID  varchar(50) comment '申请人',
   APPLICATION_TIME     datetime comment '申请时间',
   REPLY_CONTENT        text comment '回复内容',
   REPLY_TIME           datetime comment '回复时间',
   REMARK               text comment '备注',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_PLAN_TEAM_TICKET comment '团组订票文件表';
