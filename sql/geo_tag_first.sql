drop table if exists ANT_GEO_TAG_FIRST;

/*==============================================================*/
/* Table: ANT_GEO_TAG_FIRST                                     */
/*==============================================================*/
create table ANT_GEO_TAG_FIRST
(
   ID                   bigint not null auto_increment comment '主键',
   TAG_CODE             varchar(50) comment '标签编码',
   TAG_TYPE             integer comment '标签类型：1-地理标签；2-中国地名',
   TAG_ORDER            integer comment '排序码',
   CREATE_TIME          datetime comment '创建时间',
   CREATE_ID            varchar(50) comment '创建者',
   MODIFY_TIME          datetime comment '修改时间',
   MODIFY_ID            varchar(50) comment '修改者',
   DELETE_FLAG          char comment '删除标志',
   primary key (ID)
);

alter table ANT_GEO_TAG_FIRST comment '优先表';
