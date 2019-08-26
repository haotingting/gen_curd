drop table if exists ANT_RULE_CHECK;

/*==============================================================*/
/* Table: ANT_RULE_CHECK                                        */
/*==============================================================*/
create table ANT_RULE_CHECK
(
   ID                   bigint not null auto_increment comment '主键',
   CATEGORY_CODE        varchar(500) comment '分类编码',
   MODULE_CODE          varchar(500) comment '模块编码',
   RULE_CODE            varchar(500) comment '规则编码',
   RULE_NAME            varchar(500) comment '规则名称',
   RULE_VALUE           integer comment '规则数据 0-否 1-是',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_RULE_CHECK comment '审核规则表';
