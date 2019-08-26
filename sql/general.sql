drop table if exists ANT_GENERAL;

/*==============================================================*/
/* Table: ANT_GENERAL                                           */
/*==============================================================*/
create table ANT_GENERAL
(
   ID                   bigint not null auto_increment comment '主键',
   GENERAL_CODE         varchar(50) comment '字典编码',
   CATEGORY             varchar(100) comment '分类',
   NUMBER               varchar(100) comment '代码',
   NAME                 varchar(500) comment '名称',
   VALUE                varchar(500) comment '数值',
   GENERAL_ORDER        integer comment '排序',
   IS_PRIORITY          integer comment '是否优先 0-否 1-是',
   DISABLED             integer comment '是否停用 0-否 1-是',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_GENERAL comment '通用字典表';
