drop table if exists ANT_PLAN_ORDER_EDITION;

/*==============================================================*/
/* Table: ANT_PLAN_ORDER_EDITION                                */
/*==============================================================*/
create table ANT_PLAN_ORDER_EDITION
(
   ID                   bigint not null auto_increment comment '主键',
   ORDER_CODE           varchar(50) comment '订单编码',
   EDITION_CODE         varchar(50) comment '售价组编码',
   EDITION_NAME         varchar(500) comment '售价组名称',
   EDITION_ORDER        integer comment '售价组排序',
   ALONE_MAN            integer comment '单男 0(false)-否 1(true)-是',
   ALONE_WOMAN          integer comment '单女 0(false)-否 1(true)-是',
   TOTAL_QUOTA          decimal(15,2) comment '小计-名额',
   TOTAL_BABY           decimal(15,2) comment '小计-婴儿',
   TOTAL_ROOM           decimal(15,2) comment '小计-用房',
   TOTAL_NUMBER         decimal(15,2) comment '小计-份数',
   TOTAL_ADDITIONAL_1   decimal(15,2) comment '小计-附加价1',
   TOTAL_ADDITIONAL_2   decimal(15,2) comment '小计-附加价2',
   TOTAL_ADDITIONAL_3   decimal(15,2) comment '小计-附加价3',
   TOTAL_ADDITIONAL_4   decimal(15,2) comment '小计-附加价4',
   TOTAL_ADDITIONAL_5   decimal(15,2) comment '小计-附加价5',
   TOTAL_ADDITIONAL_6   decimal(15,2) comment '小计-附加价6',
   DEPART_TIME          datetime comment '出发集合-时间',
   DEPART_ADDRESS       varchar(1000) comment '出发集合-地址',
   DISMISS_ADDRESS      varchar(1000) comment '结束集散-地址',
   REMARK               text comment '备注',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_PLAN_ORDER_EDITION comment '出境游订单售价组表';
