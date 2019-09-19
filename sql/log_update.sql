drop table if exists ANT_LOG_UPDATE;

/*==============================================================*/
/* Table: ANT_LOG_UPDATE                                        */
/*==============================================================*/
create table ANT_LOG_UPDATE
(
   ID                   bigint not null auto_increment comment '主键',
   CODE                 varchar(50) comment '编码',
   CATEGORY             integer comment '分类 1-行程 2-班期',
   BEFORE_TEXT          varchar(100) comment '修改之前的数据',
   AFTER_TEXT           varchar(500) comment '修改之后的数据',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_LOG_UPDATE comment '修改数据日志表';
