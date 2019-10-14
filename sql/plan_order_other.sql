drop table if exists ANT_PLAN_ORDER_OTHER;

/*==============================================================*/
/* Table: ANT_PLAN_ORDER_OTHER                                  */
/*==============================================================*/
create table ANT_PLAN_ORDER_OTHER
(
   ID                   bigint not null auto_increment comment '主键',
   ORDER_CODE           varchar(50) comment '订单编码',
   ITEM_TYPE            integer comment '项目类型 1-保险 2-接送 3-WIFI',
   ITEM_ORDER           integer comment '项目排序',
   ITEM_AMOUNT_1        decimal(15,2) comment '数量1',
   ITEM_AMOUNT_2        decimal(15,2) comment '数量2',
   ITEM_AMOUNT_3        decimal(15,2) comment '数量3',
   ITEM_AMOUNT_4        decimal(15,2) comment '数量4',
   ITEM_AMOUNT_5        decimal(15,2) comment '数量5',
   TOTAL_PRICE          decimal(15,2) comment '合计价格',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_PLAN_ORDER_OTHER comment '出境游订单另购表';
