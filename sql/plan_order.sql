drop table if exists ANT_PLAN_ORDER;

/*==============================================================*/
/* Table: ANT_PLAN_ORDER                                        */
/*==============================================================*/
create table ANT_PLAN_ORDER
(
   ID                   bigint not null auto_increment comment '主键',
   ORDER_NUMBER         varchar(50) comment '订单号',
   SCHEDULE_CODE        varchar(50) comment '班期编码',
   TRIP_CODE            varchar(50) comment '行程编码',
   TRIP_ID              varchar(50) comment '行程ID(产品ID)',
   PLAN_CODE            varchar(50) comment '方案编码',
   ORDER_CATEGORY       integer comment '订单类型 1-预订2-预留',
   RESERVE_TIME         datetime comment '预留截至时间 (只有状态为预留时存在)',
   DEPART_DATE_FROM     datetime comment '出行日期-从',
   DEPART_DATE_TO       datetime comment '出行日期-至',
   TOUR_NUMBER          varchar(50) comment '团号',
   FULL_TRIP_NAME       varchar(1000) comment '产品名称',
   PRODUCT_INFO         text comment '产品数据 JSON',
   SELLER_CODE          varchar(50) comment '销售商编码',
   SELLER_FULL_NAME     varchar(500) comment '销售商名称(客户名称)',
   SELLER_SHORT_NAME    varchar(500) comment '销售商简称',
   SELLER_FINA_NAME     varchar(500) comment '销售商财务简称',
   SELLER_FINA_NUMBER   varchar(50) comment '销售商财务编码',
   ORDER_CONTACT        text comment '订单联系人JSON',
   SALES_MAIN_CODE      varchar(50) comment '首席销售',
   SALES_ASSISTANT_CODE varchar(50) comment '助手销售',
   ADJUST_AGENT_PRICE   decimal(15,2) comment '调价-内部结算',
   ADJUST_AGENT_REMARK  varchar(1000) comment '调价-内部结算-说明',
   ADJUST_SELLER_PRICE  decimal(15,2) comment '调价-销售商结算(应收款)',
   ADJUST_SELLER_REMARK varchar(1000) comment '调价-销售商结算(应收款)-说明',
   ADJUST_TOURIST_PRICE decimal(15,2) comment '调价-游客金额',
   ADJUST_TOURIST_REMARK varchar(1000) comment '调价-游客金额-说明',
   ORDER_USER_ID        varchar(50) comment '下单人员',
   ORDER_USER_TIME      datetime comment '下单时间',
   HOLD_USER_ID         varchar(50) comment '控位计调',
   UPDATE_USER_ID       varchar(50) comment '订单修改人员',
   UPDATE_USER_TIME     datetime comment '订单修改时间',
   CHECK_USER_ID        varchar(50) comment '审核人员',
   CHECK_USER_TIME      datetime comment '审核时间',
   CHECK_STATUS         integer comment '审核状态 0-未审 1-待审 2-已审 3-拒审',
   CHECK_REASON         text comment '审核原因',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_PLAN_ORDER comment '出境游订单表';
