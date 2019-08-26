drop table if exists ANT_TEXT_CONTENT;

/*==============================================================*/
/* Table: ANT_TEXT_CONTENT                                      */
/*==============================================================*/
create table ANT_TEXT_CONTENT
(
   ID                   bigint not null auto_increment comment '主键',
   CONTENT_CODE         varchar(50) comment '内容编码',
   TEXT_CODE            varchar(50) comment '文本编码',
   TITLE                varchar(500) comment '内容标题',
   CONTENT              text comment '内容详情',
   CONTENT_ORDER        integer comment '模板排序',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_TEXT_CONTENT comment '文本库详情表';
