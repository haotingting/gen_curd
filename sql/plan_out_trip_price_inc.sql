drop table if exists ANT_PLAN_OUT_TRIP_PRICE_INC;

/*==============================================================*/
/* Table: ANT_PLAN_OUT_TRIP_PRICE_INC                           */
/*==============================================================*/
create table ANT_PLAN_OUT_TRIP_PRICE_INC
(
   ID                   bigint not null auto_increment comment '主键',
   PRICE_CODE           varchar(50) comment '价格编码',
   TRIP_CODE            varchar(50) comment '行程编码',
   TITLE                varchar(500) comment '价格标题',
   CONTENT              text comment '价格内容',
   PRICE_ORDER          integer comment '价格排序',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_PLAN_OUT_TRIP_PRICE_INC comment '出境游行程价格包含表';
