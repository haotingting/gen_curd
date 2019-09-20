drop table if exists ANT_PLAN_ORDER_EDITION;

/*==============================================================*/
/* Table: ANT_PLAN_ORDER_EDITION                                */
/*==============================================================*/
create table ANT_PLAN_ORDER_EDITION
(
   ID                   bigint not null auto_increment comment '主键',
   ORDER_NUMBER         varchar(50) comment '订单号',
   EDITION_CODE         varchar(50) comment '售价组编码',
   EDITION_NAME         varchar(500) comment '售价组名称',
   ALONE_MAN            integer comment '单男 0(false)-否 1(true)-是',
   ALONE_WOMAN          integer comment '单女 0(false)-否 1(true)-是',
   DEPART_TIME          datetime comment '出发集合-时间',
   DEPART_ADDRESS       varchar(1000) comment '出发集合-地址',
   DISMISS_ADDRESS      varchar(1000) comment '结束集散-地址',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_PLAN_ORDER_EDITION comment '出境游订单售价组表';
