drop table if exists ANT_POLICY_SALES;

/*==============================================================*/
/* Table: ANT_POLICY_SALES                                      */
/*==============================================================*/
create table ANT_POLICY_SALES
(
   ID                   bigint not null auto_increment comment '主键',
   POLICY_CODE          varchar(50) comment '政策编码',
   NAME                 varchar(500) comment '政策名称',
   VALID_FROM           datetime comment '政策有效期开始',
   VALID_TO             datetime comment '政策有效期结束',
   PRODUCT_FROM_DEPT    text comment '产品来源部门 JSON',
   APPLY_SALES          integer comment '适用于销售商 0-否 1-是',
   APPLY_DIRECT         integer comment '适用于直销客户 0-否 1-是',
   CHIEF_AMOUNT         decimal(15,2) comment '首席销售金额',
   CHIEF_PERCENT        decimal(15,2) comment '首席销售百分比',
   ASSISTANT_AMOUNT     decimal(15,2) comment '助手金额',
   ASSISTANT_PERCENT    decimal(15,2) comment '助手百分比',
   REMARK               varchar(500) comment '内注',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_POLICY_SALES comment '销售政策表';
