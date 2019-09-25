drop table if exists ANT_SELLER_ITEM_REBATE;

/*==============================================================*/
/* Table: ANT_SELLER_ITEM_REBATE                                */
/*==============================================================*/
create table ANT_SELLER_ITEM_REBATE
(
   ID                   bigint not null auto_increment comment '主键',
   REBATE_CODE          varchar(50) comment '返利编码',
   ITEM_CODE            varchar(50) comment '项目编码',
   CATEGORY             integer comment '返利类别 1-出发日期 2-预订日期',
   REBATE_FROM_TIME     datetime comment '返利时间开始',
   REBATE_TO_TIME       datetime comment '返利时间截至',
   AMOUNT               decimal(15,2) comment '返利金额/名额',
   PERCENT              decimal(15,2) comment '订单总金额-百分比',
   REMARK               text comment '内注',
   ORDER_REMIND         integer comment '订单页提醒 0(false)-否 1(true)-是',
   CHECK_REMIND         integer comment '核算提醒 0(false)-否 1(true)-是',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_SELLER_ITEM_REBATE comment '销售商项目返利表';
