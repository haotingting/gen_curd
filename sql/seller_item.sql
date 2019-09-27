drop table if exists ANT_SELLER_ITEM;

/*==============================================================*/
/* Table: ANT_SELLER_ITEM                                       */
/*==============================================================*/
create table ANT_SELLER_ITEM
(
   ID                   bigint not null auto_increment comment '主键',
   ITEM_CODE            varchar(50) comment '项目编码',
   SELLER_CODE          varchar(50) comment '销售商编码',
   ITEM_NAME            varchar(500) comment '项目名称',
   DISABLE              integer comment '是否停用 0(false)-停用 1(true)-正常',
   DEPT                 text comment '产品部门 JSON',
   SALES_MAIN           text comment '首席销售 JSON',
   SELLER_ORDER         integer comment '销售商下单|锁定销售 0(false)-否 1(true)-是',
   OWNER_ORDER          integer comment '我司后台下单|锁定销售 0(false)-否 1(true)-是',
   PAYMENT_AMOUNT       decimal(15,2) comment '我司预付',
   ADVANCE_AMOUNT       decimal(15,2) comment '我司预收',
   ADDRESS_READ         text comment '通讯可查阅人JSON',
   UPDATE_ID            varchar(50) comment '更新人',
   UPDATE_TIME          datetime comment '更新时间',
   CHECK_ID             varchar(50) comment '审核人',
   CHECK_STATUS         integer comment '审核状态0-未审 1-待审 2-已审 3-拒审',
   CHECK_TIME           datetime comment '审核时间',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_SELLER_ITEM comment '销售商项目表';
