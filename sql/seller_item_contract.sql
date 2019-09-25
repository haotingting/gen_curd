drop table if exists ANT_SELLER_ITEM_CONTRACT;

/*==============================================================*/
/* Table: ANT_SELLER_ITEM_CONTRACT                              */
/*==============================================================*/
create table ANT_SELLER_ITEM_CONTRACT
(
   ID                   bigint not null auto_increment comment '主键',
   CONTRACT_CODE        varchar(50) comment '合同编码',
   ITEM_CODE            varchar(50) comment '项目编码',
   CONTRACT_FROM_TIME   datetime comment '合同时间开始',
   CONTRACT_TO_TIME     datetime comment '合同时间截至',
   SKETCH               text comment '简述',
   INGREDIENT           text comment '要素',
   CONTRACT_FILE        text comment '合同文件',
   REFERENCE            text comment '合同可查阅人 JSON',
   CUSTODIAN            text comment '合同保管人 JSON ',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_SELLER_ITEM_CONTRACT comment '销售商项目合同表';
