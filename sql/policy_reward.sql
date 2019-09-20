drop table if exists ANT_POLICY_REWARD;

/*==============================================================*/
/* Table: ANT_POLICY_REWARD                                     */
/*==============================================================*/
create table ANT_POLICY_REWARD
(
   ID                   bigint not null auto_increment comment '主键',
   POLICY_CODE          varchar(50) comment '政策编码',
   NAME                 varchar(500) comment '政策名称',
   VALID_FROM           datetime comment '政策有效期开始',
   VALID_TO             datetime comment '政策有效期结束',
   PRODUCT_FROM_DEPT    text comment '产品来源部门 JSON',
   APPLY_SALES          integer comment '适用于销售商 0-否 1-是',
   APPLY_DIRECT         integer comment '适用于直销客户 0-否 1-是',
   TYPE                 integer comment '类型 1-控位计调 2-操作计调 3-首席销售 4-销售助手',
   AMOUNT               decimal(15,2) comment '控卫计调金额',
   PERCENT              decimal(15,2) comment '控位计调百分比',
   REMARK               varchar(500) comment '内注',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_POLICY_REWARD comment '计调政策表';
