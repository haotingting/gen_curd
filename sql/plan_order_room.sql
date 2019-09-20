drop table if exists ANT_PLAN_ORDER_ROOM;

/*==============================================================*/
/* Table: ANT_PLAN_ORDER_ROOM                                   */
/*==============================================================*/
create table ANT_PLAN_ORDER_ROOM
(
   ID                   bigint not null auto_increment comment '主键',
   ORDER_NUMBER         varchar(50) comment '订单号',
   EDITION_CODE         varchar(50) comment '售价组编码',
   PRICE_CODE           varchar(50) comment '价格编码',
   CERT_NUMBER          varchar(100) comment '证件号码',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_PLAN_ORDER_ROOM comment '出境游订单单房差表';
