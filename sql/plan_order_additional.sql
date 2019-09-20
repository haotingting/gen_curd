drop table if exists ANT_PLAN_ORDER_ADDITIONAL;

/*==============================================================*/
/* Table: ANT_PLAN_ORDER_ADDITIONAL                             */
/*==============================================================*/
create table ANT_PLAN_ORDER_ADDITIONAL
(
   ID                   bigint not null auto_increment comment '主键',
   ORDER_NUMBER         varchar(50) comment '订单号',
   EDITION_CODE         varchar(50) comment '售价组编码',
   PRICE_CODE           varchar(50) comment '价格编码',
   CERT_NUMBER          varchar(100) comment '证件号码',
   ADDITIONAL_PRICE_1   integer comment '附加价1 0(false)-否 1(true)-是',
   ADDITIONAL_PRICE_2   integer comment '附加价2 0(false)-否 1(true)-是',
   ADDITIONAL_PRICE_3   integer comment '附加价3 0(false)-否 1(true)-是',
   ADDITIONAL_PRICE_4   integer comment '附加价4 0(false)-否 1(true)-是',
   ADDITIONAL_PRICE_5   integer comment '附加价5 0(false)-否 1(true)-是',
   ADDITIONAL_PRICE_6   integer comment '附加价6 0(false)-否 1(true)-是',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_PLAN_ORDER_ADDITIONAL comment '出境游订单选购项目表';
