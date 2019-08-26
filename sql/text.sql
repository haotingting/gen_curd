drop table if exists ANT_TEXT_INFO;

/*==============================================================*/
/* Table: ANT_TEXT_INFO                                         */
/*==============================================================*/
create table ANT_TEXT_INFO
(
   ID                   bigint not null auto_increment comment '主键',
   TEXT_CODE            varchar(50) comment '文本编码',
   NAME                 varchar(500) comment '模板名称',
   CATEGORY             varchar(100) comment '模板分类',
   TEXT_ORDER           integer comment '模板排序',
   DISABLE              integer comment '是否停用 0-否 1-是',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_TEXT_INFO comment '文本库表';
