drop table if exists ANT_PLAN_ORDER_SHUTTLE;

/*==============================================================*/
/* Table: ANT_PLAN_ORDER_SHUTTLE                                */
/*==============================================================*/
create table ANT_PLAN_ORDER_SHUTTLE
(
   ID                   bigint not null auto_increment comment '主键',
   ORDER_CODE           varchar(50) comment '订单编码',
   SHUTTLE_CODE         varchar(50) comment '接送编码',
   SHUTTLE_ORDER        integer comment '接送排序',
   NUMBERS              integer comment '数量',
   DEPART_TIME          varchar(200) comment '出发时间',
   DEPART_PLACE         varchar(500) comment '出发地点',
   BACK_TIME            varchar(200) comment '返程时间',
   BACK_PLACE           varchar(500) comment '返程地点',
   RIDE_CONTACT         varchar(500) comment '乘车联系人',
   RIDE_TEL             varchar(100) comment '联系电话',
   REMARK               text comment '备注',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_PLAN_ORDER_SHUTTLE comment '出境游订单接送表';
