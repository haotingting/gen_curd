drop table if exists ANT_PLAN_ORDER_PRICE;

/*==============================================================*/
/* Table: ANT_PLAN_ORDER_PRICE                                  */
/*==============================================================*/
create table ANT_PLAN_ORDER_PRICE
(
   ID                   bigint not null auto_increment comment '主键',
   ORDER_NUMBER         varchar(50) comment '订单号',
   PRICE_CODE           varchar(50) comment '价格编码',
   EDITION_CODE         varchar(50) comment '售价组编码',
   PRICE_TYPE           integer comment '计价类型 1-成人 2-成人[无床位|一日游|特殊价] 3-儿童[无床位12岁以内] 4-儿童[含床位12岁以内] 5-婴儿[无床位|无航班]2周岁内 6-单房差 99-其他',
   PRICE_TYPE_NAME      varchar(500) comment '计价类型名称',
   PRICE_TYPE_ADD       varchar(20) comment '计价类型附加数据',
   PRICE_ORDER          integer comment '计价类型排序',
   PRICE_QUOTA          decimal(15,2) comment '占用名额',
   PRICE_ROOM           decimal(15,2) comment '占用用房',
   RETAIL_PRICE         decimal(15,2) comment '门市售价',
   GUIDANCE_PRICE       decimal(15,2) comment '指导代理价',
   AGENCY_PRICE_2       decimal(15,2) comment '二级代理价',
   AGENCY_PRICE_1       decimal(15,2) comment '一级代理价',
   WEB_PRICE            decimal(15,2) comment '官网价',
   MEMBER_PRICE         decimal(15,2) comment '会员价',
   ADDITIONAL_PRICE_1   decimal(15,2) comment '附加价1',
   ADDITIONAL_PRICE_2   decimal(15,2) comment '附加价2',
   ADDITIONAL_PRICE_3   decimal(15,2) comment '附加价3',
   ADDITIONAL_PRICE_4   decimal(15,2) comment '附加价4',
   ADDITIONAL_PRICE_5   decimal(15,2) comment '附加价5',
   ADDITIONAL_PRICE_6   decimal(15,2) comment '附加价6',
   BUY_COUNT            decimal(15,2) comment '购买数量',
   ADDITIONAL_PRICE_1_COUNT decimal(15,2) comment '附加价1数量',
   ADDITIONAL_PRICE_2_COUNT decimal(15,2) comment '附加价2数量',
   ADDITIONAL_PRICE_3_COUNT decimal(15,2) comment '附加价3数量',
   ADDITIONAL_PRICE_4_COUNT decimal(15,2) comment '附加价4数量',
   ADDITIONAL_PRICE_5_COUNT decimal(15,2) comment '附加价5数量',
   ADDITIONAL_PRICE_6_COUNT decimal(15,2) comment '附加价6数量',
   RETAIL_PRICE_TOTAL   decimal(15,2) comment '门市售价-合计',
   GUIDANCE_PRICE_TOTAL decimal(15,2) comment '指导代理价-合计',
   AGENCY_PRICE_2_TOTAL decimal(15,2) comment '二级代理价-合计',
   AGENCY_PRICE_1_TOTAL decimal(15,2) comment '一级代理价-合计',
   WEB_PRICE_TOTAL      decimal(15,2) comment '官网价-合计',
   MEMBER_PRICE_TOTAL   decimal(15,2) comment '会员价-合计',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_PLAN_ORDER_PRICE comment '出境游订单售价表';
