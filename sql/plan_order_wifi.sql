drop table if exists ANT_PLAN_ORDER_WIFI;

/*==============================================================*/
/* Table: ANT_PLAN_ORDER_WIFI                                   */
/*==============================================================*/
create table ANT_PLAN_ORDER_WIFI
(
   ID                   bigint not null auto_increment comment '主键',
   ORDER_CODE           varchar(50) comment '订单编码',
   WIFI_CODE            varchar(50) comment 'WIFI编码',
   WIFI_ORDER           integer comment '排序',
   NUMBERS              integer comment '数量',
   REMARK               text comment '备注',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_PLAN_ORDER_WIFI comment '出境游订单WIFI表';
