drop table if exists ANT_PLAN_OUT_TRIP_SHOPPING;

/*==============================================================*/
/* Table: ANT_PLAN_OUT_TRIP_SHOPPING                            */
/*==============================================================*/
create table ANT_PLAN_OUT_TRIP_SHOPPING
(
   ID                   bigint not null auto_increment comment '主键',
   SHOPPING_CODE        varchar(50) comment '进店时间',
   TRIP_CODE            varchar(50) comment '行程编码',
   DAY                  integer comment '天数',
   ENTER_TIME           varchar(50) comment '进店时间',
   PLACE                varchar(200) comment '购物地点',
   PLACE_NAME           varchar(500) comment '购物场所名称',
   GOODS_INFO           varchar(1000) comment '主要商品信息',
   MINUTE               integer comment '最长停留时间/分钟',
   SHOPPING_DESC        text comment '说明',
   SHOPPING_ORDER       integer comment '排序',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_PLAN_OUT_TRIP_SHOPPING comment '出境游行程购物表';
